.class final Ltd/e;
.super Ltd/a;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/Thread;

.field private final e:Ltd/d1;


# direct methods
.method public constructor <init>(Lad/i;Ljava/lang/Thread;Ltd/d1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v0}, Ltd/a;-><init>(Lad/i;ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Ltd/e;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    iput-object p3, p0, Ltd/e;->e:Ltd/d1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected F(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Ltd/e;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Ltd/e;->d:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-static {}, Ltd/c;->a()Ltd/b;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final S0()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Ltd/c;->a()Ltd/b;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Ltd/e;->e:Ltd/d1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v2, v1, v3}, Ltd/d1;->Y0(Ltd/d1;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_6

    .line 19
    .line 20
    iget-object v0, p0, Ltd/e;->e:Ltd/d1;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ltd/d1;->b1()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0}, Ltd/z1;->X()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Ltd/c;->a()Ltd/b;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :try_start_2
    iget-object v0, p0, Ltd/e;->e:Ltd/d1;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-static {v0, v2, v1, v3}, Ltd/d1;->T0(Ltd/d1;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-static {}, Ltd/c;->a()Ltd/b;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ltd/z1;->g0()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ltd/a2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v1, v0, Ltd/a0;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    move-object v3, v0

    .line 72
    check-cast v3, Ltd/a0;

    .line 73
    .line 74
    :cond_4
    if-nez v3, :cond_5

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_5
    iget-object v0, v3, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 78
    .line 79
    throw v0

    .line 80
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ltd/z1;->J(Ljava/lang/Throwable;)Z

    .line 86
    .line 87
    .line 88
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :goto_2
    :try_start_4
    iget-object v4, p0, Ltd/e;->e:Ltd/d1;

    .line 90
    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    invoke-static {v4, v2, v1, v3}, Ltd/d1;->T0(Ltd/d1;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    invoke-static {}, Ltd/c;->a()Ltd/b;

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method protected p0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
