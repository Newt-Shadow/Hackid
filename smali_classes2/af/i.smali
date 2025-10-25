.class public abstract Laf/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/i$b;,
        Laf/i$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private b:Z

.field private c:I

.field private final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Laf/i;->a:Z

    .line 5
    .line 6
    invoke-static {}, Laf/e1;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    return-void
.end method

.method private final E(JLaf/d;J)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Laf/d;->k0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-wide v4, p4

    .line 8
    invoke-static/range {v0 .. v5}, Laf/b;->b(JJJ)V

    .line 9
    .line 10
    .line 11
    add-long/2addr p4, p1

    .line 12
    :cond_0
    :goto_0
    cmp-long v0, p1, p4

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    iget-object v6, p3, Laf/d;->a:Laf/v0;

    .line 17
    .line 18
    invoke-static {v6}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sub-long v0, p4, p1

    .line 22
    .line 23
    iget v2, v6, Laf/v0;->c:I

    .line 24
    .line 25
    iget v3, v6, Laf/v0;->b:I

    .line 26
    .line 27
    sub-int/2addr v2, v3

    .line 28
    int-to-long v2, v2

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    long-to-int v7, v0

    .line 34
    iget-object v3, v6, Laf/v0;->a:[B

    .line 35
    .line 36
    iget v4, v6, Laf/v0;->b:I

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    move-wide v1, p1

    .line 40
    move v5, v7

    .line 41
    invoke-virtual/range {v0 .. v5}, Laf/i;->s(J[BII)V

    .line 42
    .line 43
    .line 44
    iget v0, v6, Laf/v0;->b:I

    .line 45
    .line 46
    add-int/2addr v0, v7

    .line 47
    iput v0, v6, Laf/v0;->b:I

    .line 48
    .line 49
    int-to-long v0, v7

    .line 50
    add-long/2addr p1, v0

    .line 51
    invoke-virtual {p3}, Laf/d;->k0()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    sub-long/2addr v2, v0

    .line 56
    invoke-virtual {p3, v2, v3}, Laf/d;->d0(J)V

    .line 57
    .line 58
    .line 59
    iget v0, v6, Laf/v0;->b:I

    .line 60
    .line 61
    iget v1, v6, Laf/v0;->c:I

    .line 62
    .line 63
    if-ne v0, v1, :cond_0

    .line 64
    .line 65
    invoke-virtual {v6}, Laf/v0;->b()Laf/v0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p3, Laf/d;->a:Laf/v0;

    .line 70
    .line 71
    invoke-static {v6}, Laf/w0;->b(Laf/v0;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public static final synthetic a(Laf/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Laf/i;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic b(Laf/i;)I
    .locals 0

    .line 1
    iget p0, p0, Laf/i;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Laf/i;JLaf/d;J)J
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Laf/i;->u(JLaf/d;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic e(Laf/i;I)V
    .locals 0

    .line 1
    iput p1, p0, Laf/i;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f(Laf/i;JLaf/d;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Laf/i;->E(JLaf/d;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u(JLaf/d;J)J
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-ltz v3, :cond_0

    .line 11
    .line 12
    move v3, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-eqz v3, :cond_4

    .line 16
    .line 17
    add-long v1, p1, v1

    .line 18
    .line 19
    move-wide/from16 v11, p1

    .line 20
    .line 21
    :goto_1
    cmp-long v3, v11, v1

    .line 22
    .line 23
    if-gez v3, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Laf/d;->J0(I)Laf/v0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v8, v3, Laf/v0;->a:[B

    .line 30
    .line 31
    iget v9, v3, Laf/v0;->c:I

    .line 32
    .line 33
    sub-long v5, v1, v11

    .line 34
    .line 35
    rsub-int v7, v9, 0x2000

    .line 36
    .line 37
    int-to-long v13, v7

    .line 38
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    long-to-int v10, v5

    .line 43
    move-object v5, p0

    .line 44
    move-wide v6, v11

    .line 45
    invoke-virtual/range {v5 .. v10}, Laf/i;->k(J[BII)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, -0x1

    .line 50
    if-ne v5, v6, :cond_2

    .line 51
    .line 52
    iget v1, v3, Laf/v0;->b:I

    .line 53
    .line 54
    iget v2, v3, Laf/v0;->c:I

    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Laf/v0;->b()Laf/v0;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Laf/d;->a:Laf/v0;

    .line 63
    .line 64
    invoke-static {v3}, Laf/w0;->b(Laf/v0;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    cmp-long v0, p1, v11

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    const-wide/16 v0, -0x1

    .line 72
    .line 73
    return-wide v0

    .line 74
    :cond_2
    iget v6, v3, Laf/v0;->c:I

    .line 75
    .line 76
    add-int/2addr v6, v5

    .line 77
    iput v6, v3, Laf/v0;->c:I

    .line 78
    .line 79
    int-to-long v5, v5

    .line 80
    add-long/2addr v11, v5

    .line 81
    invoke-virtual/range {p3 .. p3}, Laf/d;->k0()J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    add-long/2addr v7, v5

    .line 86
    invoke-virtual {v0, v7, v8}, Laf/d;->d0(J)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    sub-long v11, v11, p1

    .line 91
    .line 92
    return-wide v11

    .line 93
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "byteCount < 0: "

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1
.end method

.method public static synthetic w(Laf/i;JILjava/lang/Object;)Laf/y0;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-wide/16 p1, 0x0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Laf/i;->v(J)Laf/y0;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Laf/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_1
    iput-boolean v1, p0, Laf/i;->b:Z

    .line 16
    .line 17
    iget v1, p0, Laf/i;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_2
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Laf/i;->h()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public final flush()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Laf/i;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-boolean v1, p0, Laf/i;->b:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Laf/i;->j()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    const-string v1, "closed"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "file handle is read-only"

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public final g()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract h()V
.end method

.method protected abstract j()V
.end method

.method protected abstract k(J[BII)I
.end method

.method protected abstract q()J
.end method

.method protected abstract s(J[BII)V
.end method

.method public final v(J)Laf/y0;
    .locals 2

    .line 1
    iget-boolean v0, p0, Laf/i;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-boolean v1, p0, Laf/i;->b:Z

    .line 11
    .line 12
    xor-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Laf/i;->c:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iput v1, p0, Laf/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Laf/i$a;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, Laf/i$a;-><init>(Laf/i;J)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    :try_start_1
    const-string p1, "closed"

    .line 32
    .line 33
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "file handle is read-only"

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
.end method

.method public final x()J
    .locals 3

    .line 1
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Laf/i;->b:Z

    .line 7
    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Laf/i;->q()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    :try_start_1
    const-string v1, "closed"

    .line 23
    .line 24
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public final z(J)Laf/a1;
    .locals 2

    .line 1
    iget-object v0, p0, Laf/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Laf/i;->b:Z

    .line 7
    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget v1, p0, Laf/i;->c:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, p0, Laf/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Laf/i$b;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, p2}, Laf/i$b;-><init>(Laf/i;J)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    :try_start_1
    const-string p1, "closed"

    .line 28
    .line 29
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
