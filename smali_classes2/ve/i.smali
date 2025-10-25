.class public final Lve/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/i$c;,
        Lve/i$b;,
        Lve/i$a;,
        Lve/i$d;
    }
.end annotation


# static fields
.field public static final o:Lve/i$a;


# instance fields
.field private final a:I

.field private final b:Lve/f;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private final g:Ljava/util/ArrayDeque;

.field private h:Z

.field private final i:Lve/i$c;

.field private final j:Lve/i$b;

.field private final k:Lve/i$d;

.field private final l:Lve/i$d;

.field private m:Lve/b;

.field private n:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lve/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lve/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lve/i;->o:Lve/i$a;

    return-void
.end method

.method public constructor <init>(ILve/f;ZZLne/s;)V
    .locals 3

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lve/i;->a:I

    .line 10
    .line 11
    iput-object p2, p0, Lve/i;->b:Lve/f;

    .line 12
    .line 13
    invoke-virtual {p2}, Lve/f;->A0()Lve/m;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lve/m;->c()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    iput-wide v0, p0, Lve/i;->f:J

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lve/i;->g:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    new-instance v0, Lve/i$c;

    .line 32
    .line 33
    invoke-virtual {p2}, Lve/f;->t0()Lve/m;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lve/m;->c()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    int-to-long v1, p2

    .line 42
    invoke-direct {v0, p0, v1, v2, p4}, Lve/i$c;-><init>(Lve/i;JZ)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lve/i;->i:Lve/i$c;

    .line 46
    .line 47
    new-instance p2, Lve/i$b;

    .line 48
    .line 49
    invoke-direct {p2, p0, p3}, Lve/i$b;-><init>(Lve/i;Z)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lve/i;->j:Lve/i$b;

    .line 53
    .line 54
    new-instance p2, Lve/i$d;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lve/i$d;-><init>(Lve/i;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lve/i;->k:Lve/i$d;

    .line 60
    .line 61
    new-instance p2, Lve/i$d;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lve/i$d;-><init>(Lve/i;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lve/i;->l:Lve/i$d;

    .line 67
    .line 68
    if-eqz p5, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lve/i;->t()Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    xor-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    if-eqz p2, :cond_0

    .line 77
    .line 78
    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lve/i;->t()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p2, "remotely-initiated streams should have headers"

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method private final e(Lve/b;Ljava/io/IOException;)Z
    .locals 2

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Thread "

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lve/i;->h()Lve/b;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const/4 v1, 0x0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return v1

    .line 61
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lve/i;->p()Lve/i$c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lve/i$c;->b()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Lve/i;->o()Lve/i$b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lve/i$b;->c()Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    monitor-exit p0

    .line 82
    return v1

    .line 83
    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Lve/i;->z(Lve/b;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Lve/i;->A(Ljava/io/IOException;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    monitor-exit p0

    .line 95
    iget-object p1, p0, Lve/i;->b:Lve/f;

    .line 96
    .line 97
    iget p2, p0, Lve/i;->a:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lve/f;->f1(I)Lve/i;

    .line 100
    .line 101
    .line 102
    const/4 p1, 0x1

    .line 103
    return p1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0

    .line 106
    throw p1
.end method


# virtual methods
.method public final A(Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve/i;->n:Ljava/io/IOException;

    .line 2
    .line 3
    return-void
.end method

.method public final B(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/i;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public final C(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/i;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public final D(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/i;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized E()Lne/s;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve/i;->k:Lve/i$d;

    .line 3
    .line 4
    invoke-virtual {v0}, Laf/c;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :goto_0
    :try_start_1
    iget-object v0, p0, Lve/i;->g:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lve/i;->m:Lve/b;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lve/i;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_2
    iget-object v0, p0, Lve/i;->k:Lve/i$d;

    .line 24
    .line 25
    invoke-virtual {v0}, Lve/i$d;->C()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lve/i;->g:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lve/i;->g:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "headersQueue.removeFirst()"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v0, Lne/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :cond_1
    :try_start_3
    iget-object v0, p0, Lve/i;->n:Ljava/io/IOException;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Lve/n;

    .line 58
    .line 59
    iget-object v1, p0, Lve/i;->m:Lve/b;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lve/n;-><init>(Lve/b;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    throw v0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lve/i;->k:Lve/i$d;

    .line 70
    .line 71
    invoke-virtual {v1}, Lve/i$d;->C()V

    .line 72
    .line 73
    .line 74
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    monitor-exit p0

    .line 77
    throw v0
.end method

.method public final F()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final G()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->l:Lve/i$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/i;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lve/i;->f:J

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Thread "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lve/i;->p()Lve/i$c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lve/i$c;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lve/i;->p()Lve/i$c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lve/i$c;->a()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lve/i;->o()Lve/i$b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lve/i$b;->c()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lve/i;->o()Lve/i$b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lve/i$b;->b()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    :cond_2
    const/4 v0, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 95
    :goto_1
    invoke-virtual {p0}, Lve/i;->u()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    monitor-exit p0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    sget-object v0, Lve/b;->k:Lve/b;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, v1}, Lve/i;->d(Lve/b;Ljava/io/IOException;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    if-nez v1, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lve/i;->b:Lve/f;

    .line 114
    .line 115
    iget v1, p0, Lve/i;->a:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lve/f;->f1(I)Lve/i;

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_2
    return-void

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0

    .line 123
    throw v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lve/i$b;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lve/i$b;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lve/i;->m:Lve/b;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lve/i;->n:Ljava/io/IOException;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lve/n;

    .line 26
    .line 27
    iget-object v1, p0, Lve/i;->m:Lve/b;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lve/n;-><init>(Lve/b;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    throw v0

    .line 36
    :cond_1
    return-void

    .line 37
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v1, "stream finished"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v1, "stream closed"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final d(Lve/b;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "rstStatusCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lve/i;->e(Lve/b;Ljava/io/IOException;)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p2, p0, Lve/i;->b:Lve/f;

    .line 14
    .line 15
    iget v0, p0, Lve/i;->a:I

    .line 16
    .line 17
    invoke-virtual {p2, v0, p1}, Lve/f;->r1(ILve/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Lve/b;)V
    .locals 2

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lve/i;->e(Lve/b;Ljava/io/IOException;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lve/i;->b:Lve/f;

    .line 15
    .line 16
    iget v1, p0, Lve/i;->a:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lve/f;->s1(ILve/b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g()Lve/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->b:Lve/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized h()Lve/b;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve/i;->m:Lve/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final i()Ljava/io/IOException;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->n:Ljava/io/IOException;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lve/i;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/i;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/i;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m()Lve/i$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->k:Lve/i$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Laf/y0;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/i;->h:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lve/i;->t()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_2
    :try_start_1
    const-string v0, "reply before requesting the sink"

    .line 25
    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public final o()Lve/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lve/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->i:Lve/i$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/i;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/i;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final s()Lve/i$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->l:Lve/i$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Z
    .locals 4

    .line 1
    iget v0, p0, Lve/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lve/i;->b:Lve/f;

    .line 12
    .line 13
    invoke-virtual {v3}, Lve/f;->X()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v3, v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v2

    .line 21
    :goto_1
    return v1
.end method

.method public final declared-synchronized u()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve/i;->m:Lve/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lve/i;->i:Lve/i$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lve/i$c;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lve/i;->i:Lve/i$c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lve/i$c;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lve/i$b;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lve/i;->j:Lve/i$b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lve/i$b;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :cond_2
    iget-boolean v0, p0, Lve/i;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return v1

    .line 47
    :cond_3
    monitor-exit p0

    .line 48
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final v()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i;->k:Lve/i$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Laf/f;I)V
    .locals 3

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Loe/d;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Thread "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " MUST NOT hold lock on "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lve/i;->i:Lve/i$c;

    .line 57
    .line 58
    int-to-long v1, p2

    .line 59
    invoke-virtual {v0, p1, v1, v2}, Lve/i$c;->f(Laf/f;J)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final x(Lne/s;Z)V
    .locals 2

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Loe/d;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "Thread "

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " MUST NOT hold lock on "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, p0, Lve/i;->h:Z

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0}, Lve/i;->p()Lve/i$c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lve/i$c;->j(Lne/s;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lve/i;->h:Z

    .line 74
    .line 75
    iget-object v0, p0, Lve/i;->g:Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :goto_2
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Lve/i;->p()Lve/i$c;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v1}, Lve/i$c;->h(Z)V

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p0}, Lve/i;->u()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 94
    .line 95
    .line 96
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lve/i;->b:Lve/f;

    .line 102
    .line 103
    iget p2, p0, Lve/i;->a:I

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lve/f;->f1(I)Lve/i;

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p0

    .line 111
    throw p1
.end method

.method public final declared-synchronized y(Lve/b;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "errorCode"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lve/i;->m:Lve/b;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lve/i;->m:Lve/b;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final z(Lve/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve/i;->m:Lve/b;

    .line 2
    .line 3
    return-void
.end method
