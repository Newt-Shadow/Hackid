.class public final Laf/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/f;


# instance fields
.field public final a:Laf/a1;

.field public final b:Laf/d;

.field public c:Z


# direct methods
.method public constructor <init>(Laf/a1;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Laf/u0;->a:Laf/a1;

    .line 10
    .line 11
    new-instance p1, Laf/d;

    .line 12
    .line 13
    invoke-direct {p1}, Laf/d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Laf/u0;->b:Laf/d;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public A(J)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Laf/u0;->O0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Laf/d;->A(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public D(J)Laf/g;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Laf/u0;->O0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Laf/d;->D(J)Laf/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public F0()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->F0()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public G0()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->G0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public L0(Laf/d;J)J
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-ltz v2, :cond_0

    .line 12
    .line 13
    move v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-boolean v2, p0, Laf/u0;->c:Z

    .line 19
    .line 20
    xor-int/2addr v2, v3

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 24
    .line 25
    invoke-virtual {v2}, Laf/d;->k0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v2, v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 34
    .line 35
    iget-object v1, p0, Laf/u0;->b:Laf/d;

    .line 36
    .line 37
    const-wide/16 v2, 0x2000

    .line 38
    .line 39
    invoke-interface {v0, v1, v2, v3}, Laf/a1;->L0(Laf/d;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    cmp-long v0, v0, v2

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 51
    .line 52
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide p2

    .line 60
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, p3}, Laf/d;->L0(Laf/d;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    :goto_1
    return-wide v2

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "closed"

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "byteCount < 0: "

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p2
.end method

.method public N()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 8
    .line 9
    invoke-virtual {v0}, Laf/d;->N()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 16
    .line 17
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 18
    .line 19
    const-wide/16 v3, 0x2000

    .line 20
    .line 21
    invoke-interface {v0, v2, v3, v4}, Laf/a1;->L0(Laf/d;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, -0x1

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "closed"

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public O0(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Laf/u0;->c(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public Q0()J
    .locals 5

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    int-to-long v2, v1

    .line 10
    invoke-virtual {p0, v2, v3}, Laf/u0;->c(J)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 17
    .line 18
    int-to-long v3, v0

    .line 19
    invoke-virtual {v2, v3, v4}, Laf/d;->k(J)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x30

    .line 24
    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x39

    .line 28
    .line 29
    if-le v2, v3, :cond_2

    .line 30
    .line 31
    :cond_0
    const/16 v3, 0x61

    .line 32
    .line 33
    if-lt v2, v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0x66

    .line 36
    .line 37
    if-le v2, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    const/16 v3, 0x41

    .line 40
    .line 41
    if-lt v2, v3, :cond_3

    .line 42
    .line 43
    const/16 v3, 0x46

    .line 44
    .line 45
    if-le v2, v3, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x10

    .line 66
    .line 67
    invoke-static {v3}, Lrd/a;->a(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Lrd/a;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "toString(this, checkRadix(radix))"

    .line 80
    .line 81
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_5
    :goto_2
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 96
    .line 97
    invoke-virtual {v0}, Laf/d;->Q0()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    return-wide v0
.end method

.method public R0(Laf/p0;)I
    .locals 8

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lbf/a;->c(Laf/d;Laf/p0;Z)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, -0x2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v0, v2, :cond_2

    .line 21
    .line 22
    if-eq v0, v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Laf/p0;->o()[Laf/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    aget-object p1, p1, v0

    .line 29
    .line 30
    invoke-virtual {p1}, Laf/g;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v1, p0, Laf/u0;->b:Laf/d;

    .line 35
    .line 36
    int-to-long v2, p1

    .line 37
    invoke-virtual {v1, v2, v3}, Laf/d;->skip(J)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move v0, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 44
    .line 45
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 46
    .line 47
    const-wide/16 v4, 0x2000

    .line 48
    .line 49
    invoke-interface {v0, v2, v4, v5}, Laf/a1;->L0(Laf/d;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    const-wide/16 v6, -0x1

    .line 54
    .line 55
    cmp-long v0, v4, v6

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    return v0

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "closed"

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public S0()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Laf/u0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laf/u0$a;-><init>(Laf/u0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public a(B)J
    .locals 6

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    const-wide v4, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Laf/u0;->b(BJJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public a0(J)Ljava/lang/String;
    .locals 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    const-wide v0, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v2, p1, v0

    .line 18
    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move-wide v5, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    add-long v5, p1, v3

    .line 26
    .line 27
    :goto_1
    const/16 v8, 0xa

    .line 28
    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    move-object v7, p0

    .line 32
    move-wide v11, v5

    .line 33
    invoke-virtual/range {v7 .. v12}, Laf/u0;->b(BJJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-wide/16 v9, -0x1

    .line 38
    .line 39
    cmp-long v2, v7, v9

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Laf/u0;->b:Laf/d;

    .line 44
    .line 45
    invoke-static {p1, v7, v8}, Lbf/a;->b(Laf/d;J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    cmp-long v0, v5, v0

    .line 51
    .line 52
    if-gez v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, v5, v6}, Laf/u0;->c(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 61
    .line 62
    sub-long v1, v5, v3

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Laf/d;->k(J)B

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const/16 v1, 0xd

    .line 69
    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    add-long/2addr v3, v5

    .line 73
    invoke-virtual {p0, v3, v4}, Laf/u0;->c(J)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 80
    .line 81
    invoke-virtual {v0, v5, v6}, Laf/d;->k(J)B

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0xa

    .line 86
    .line 87
    if-ne v0, v1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Laf/u0;->b:Laf/d;

    .line 90
    .line 91
    invoke-static {p1, v5, v6}, Lbf/a;->b(Laf/d;J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_2
    return-object p1

    .line 96
    :cond_3
    new-instance v6, Laf/d;

    .line 97
    .line 98
    invoke-direct {v6}, Laf/d;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 102
    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .line 105
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    const/16 v1, 0x20

    .line 110
    .line 111
    int-to-long v7, v1

    .line 112
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    move-object v1, v6

    .line 117
    invoke-virtual/range {v0 .. v5}, Laf/d;->f(Laf/d;JJ)Laf/d;

    .line 118
    .line 119
    .line 120
    new-instance v0, Ljava/io/EOFException;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "\\n not found: limit="

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 133
    .line 134
    invoke-virtual {v2}, Laf/d;->k0()J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, " content="

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Laf/d;->E()Laf/g;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Laf/g;->p()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const/16 p1, 0x2026

    .line 162
    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0

    .line 174
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "limit < 0: "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p2
.end method

.method public b(BJJ)J
    .locals 10

    .line 1
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v2, p2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    cmp-long v0, p2, p4

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    if-eqz v1, :cond_4

    .line 21
    .line 22
    :goto_1
    cmp-long v0, p2, p4

    .line 23
    .line 24
    const-wide/16 v8, -0x1

    .line 25
    .line 26
    if-gez v0, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 29
    .line 30
    move v3, p1

    .line 31
    move-wide v4, p2

    .line 32
    move-wide v6, p4

    .line 33
    invoke-virtual/range {v2 .. v7}, Laf/d;->q(BJJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    cmp-long v2, v0, v8

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    move-wide v8, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    cmp-long v2, v0, p4

    .line 50
    .line 51
    if-gez v2, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Laf/u0;->a:Laf/a1;

    .line 54
    .line 55
    iget-object v3, p0, Laf/u0;->b:Laf/d;

    .line 56
    .line 57
    const-wide/16 v4, 0x2000

    .line 58
    .line 59
    invoke-interface {v2, v3, v4, v5}, Laf/a1;->L0(Laf/d;J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    cmp-long v2, v2, v8

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide p2

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_2
    return-wide v8

    .line 74
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v0, "fromIndex="

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, " toIndex="

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p2

    .line 109
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string p2, "closed"

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public c(J)Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 15
    .line 16
    xor-int/2addr v0, v2

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    cmp-long v0, v3, p1

    .line 26
    .line 27
    if-gez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 30
    .line 31
    iget-object v3, p0, Laf/u0;->b:Laf/d;

    .line 32
    .line 33
    const-wide/16 v4, 0x2000

    .line 34
    .line 35
    invoke-interface {v0, v3, v4, v5}, Laf/a1;->L0(Laf/d;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const-wide/16 v5, -0x1

    .line 40
    .line 41
    cmp-long v0, v3, v5

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v1, v2

    .line 47
    :goto_1
    return v1

    .line 48
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "closed"

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "byteCount < 0: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2
.end method

.method public close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Laf/u0;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 9
    .line 10
    invoke-interface {v0}, Laf/a1;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Laf/d;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public d()Laf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public h0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    iget-object v1, p0, Laf/u0;->a:Laf/a1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Laf/d;->W0(Laf/a1;)J

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Laf/d;->h0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public n()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 2
    .line 3
    invoke-interface {v0}, Laf/a1;->n()Laf/b1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 19
    .line 20
    iget-object v1, p0, Laf/u0;->b:Laf/d;

    .line 21
    .line 22
    const-wide/16 v2, 0x2000

    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3}, Laf/a1;->L0(Laf/d;J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    return p1

    .line 36
    :cond_0
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Laf/d;->read(Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public readByte()B
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readInt()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public readShort()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public skip(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Laf/u0;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :goto_0
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-lez v2, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 14
    .line 15
    invoke-virtual {v2}, Laf/d;->k0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long v0, v2, v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Laf/u0;->a:Laf/a1;

    .line 24
    .line 25
    iget-object v1, p0, Laf/u0;->b:Laf/d;

    .line 26
    .line 27
    const-wide/16 v2, 0x2000

    .line 28
    .line 29
    invoke-interface {v0, v1, v2, v3}, Laf/a1;->L0(Laf/d;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_1
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 47
    .line 48
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-object v2, p0, Laf/u0;->b:Laf/d;

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Laf/d;->skip(J)V

    .line 59
    .line 60
    .line 61
    sub-long/2addr p1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p2, "closed"

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "buffer("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Laf/u0;->a:Laf/a1;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Laf/u0;->a0(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public w0()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Laf/u0;->O0(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/d;->w0()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public x0(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Laf/u0;->O0(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laf/u0;->b:Laf/d;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Laf/d;->x0(J)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
