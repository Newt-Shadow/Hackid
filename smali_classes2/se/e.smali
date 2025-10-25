.class public final Lse/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/e$a;
    }
.end annotation


# instance fields
.field private final a:Lne/w;

.field private final b:Lne/y;

.field private final c:Z

.field private final d:Lse/g;

.field private final e:Lne/q;

.field private final f:Lse/e$b;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Object;

.field private i:Lse/d;

.field private j:Lse/f;

.field private k:Z

.field private l:Lse/c;

.field private m:Z

.field private n:Z

.field private o:Z

.field private volatile p:Z

.field private volatile q:Lse/c;

.field private volatile r:Lse/f;


# direct methods
.method public constructor <init>(Lne/w;Lne/y;Z)V
    .locals 1

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "originalRequest"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lse/e;->a:Lne/w;

    .line 15
    .line 16
    iput-object p2, p0, Lse/e;->b:Lne/y;

    .line 17
    .line 18
    iput-boolean p3, p0, Lse/e;->c:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Lne/w;->j()Lne/j;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lne/j;->a()Lse/g;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lse/e;->d:Lse/g;

    .line 29
    .line 30
    invoke-virtual {p1}, Lne/w;->o()Lne/q$c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1, p0}, Lne/q$c;->a(Lne/e;)Lne/q;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lse/e;->e:Lne/q;

    .line 39
    .line 40
    new-instance p1, Lse/e$b;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lse/e$b;-><init>(Lse/e;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lse/e;->k()Lne/w;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lne/w;->e()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    int-to-long p2, p2

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3, v0}, Laf/b1;->g(JLjava/util/concurrent/TimeUnit;)Laf/b1;

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lse/e;->f:Lse/e$b;

    .line 60
    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lse/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lse/e;->o:Z

    .line 70
    .line 71
    return-void
.end method

.method private final b(Ljava/io/IOException;)Ljava/io/IOException;
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
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Thread "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Lse/e;->j:Lse/f;

    .line 52
    .line 53
    if-eqz v1, :cond_8

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "Thread "

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, " MUST NOT hold lock on "

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_3
    :goto_1
    monitor-enter v1

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lse/e;->u()Ljava/net/Socket;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    .line 109
    iget-object v2, p0, Lse/e;->j:Lse/f;

    .line 110
    .line 111
    if-nez v2, :cond_5

    .line 112
    .line 113
    if-nez v0, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    invoke-static {v0}, Loe/d;->m(Ljava/net/Socket;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v0, p0, Lse/e;->e:Lne/q;

    .line 120
    .line 121
    invoke-virtual {v0, p0, v1}, Lne/q;->k(Lne/e;Lne/i;)V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    if-nez v0, :cond_6

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    const/4 v0, 0x0

    .line 130
    :goto_3
    if-eqz v0, :cond_7

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    const-string p1, "Check failed."

    .line 134
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    monitor-exit v1

    .line 147
    throw p1

    .line 148
    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Lse/e;->y(Ljava/io/IOException;)Ljava/io/IOException;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz p1, :cond_9

    .line 153
    .line 154
    iget-object p1, p0, Lse/e;->e:Lne/q;

    .line 155
    .line 156
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p0, v0}, Lne/q;->d(Lne/e;Ljava/io/IOException;)V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_9
    iget-object p1, p0, Lse/e;->e:Lne/q;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Lne/q;->c(Lne/e;)V

    .line 166
    .line 167
    .line 168
    :goto_5
    return-object v0
.end method

.method private final c()V
    .locals 2

    .line 1
    sget-object v0, Lwe/j;->a:Lwe/j$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwe/j$a;->g()Lwe/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "response.body().close()"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lwe/j;->h(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lse/e;->h:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, p0, Lse/e;->e:Lne/q;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lne/q;->e(Lne/e;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final f(Lne/t;)Lne/a;
    .locals 14

    .line 1
    invoke-virtual {p1}, Lne/t;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Lne/w;->F()Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 14
    .line 15
    invoke-virtual {v1}, Lne/w;->t()Ljavax/net/ssl/HostnameVerifier;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lse/e;->a:Lne/w;

    .line 20
    .line 21
    invoke-virtual {v2}, Lne/w;->f()Lne/f;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v6, v0

    .line 26
    move-object v7, v1

    .line 27
    move-object v8, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    move-object v6, v0

    .line 31
    move-object v7, v6

    .line 32
    move-object v8, v7

    .line 33
    :goto_0
    new-instance v0, Lne/a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lne/t;->h()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lne/t;->l()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 44
    .line 45
    invoke-virtual {p1}, Lne/w;->n()Lne/p;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 50
    .line 51
    invoke-virtual {p1}, Lne/w;->E()Ljavax/net/SocketFactory;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 56
    .line 57
    invoke-virtual {p1}, Lne/w;->A()Lne/b;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 62
    .line 63
    invoke-virtual {p1}, Lne/w;->z()Ljava/net/Proxy;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 68
    .line 69
    invoke-virtual {p1}, Lne/w;->y()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 74
    .line 75
    invoke-virtual {p1}, Lne/w;->k()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    iget-object p1, p0, Lse/e;->a:Lne/w;

    .line 80
    .line 81
    invoke-virtual {p1}, Lne/w;->B()Ljava/net/ProxySelector;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    move-object v1, v0

    .line 86
    invoke-direct/range {v1 .. v13}, Lne/a;-><init>(Ljava/lang/String;ILne/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lne/f;Lne/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method private final y(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lse/e;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lse/e;->f:Lse/e$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Laf/c;->w()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 16
    .line 17
    const-string v1, "timeout"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lse/f;)V
    .locals 3

    .line 1
    const-string v0, "connection"

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
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Thread "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " MUST hold lock on "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lse/e;->j:Lse/f;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    :goto_1
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iput-object p1, p0, Lse/e;->j:Lse/f;

    .line 66
    .line 67
    invoke-virtual {p1}, Lse/f;->n()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lse/e$a;

    .line 72
    .line 73
    iget-object v1, p0, Lse/e;->h:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lse/e$a;-><init>(Lse/e;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "Check failed."

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lse/e;->e()Lse/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/e;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lse/e;->p:Z

    .line 8
    .line 9
    iget-object v0, p0, Lse/e;->q:Lse/c;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lse/c;->b()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lse/e;->r:Lse/f;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v0}, Lse/f;->d()V

    .line 23
    .line 24
    .line 25
    :goto_1
    iget-object v0, p0, Lse/e;->e:Lne/q;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lne/q;->f(Lne/e;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public e()Lse/e;
    .locals 4

    .line 1
    new-instance v0, Lse/e;

    .line 2
    .line 3
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 4
    .line 5
    iget-object v2, p0, Lse/e;->b:Lne/y;

    .line 6
    .line 7
    iget-boolean v3, p0, Lse/e;->c:Z

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lse/e;-><init>(Lne/w;Lne/y;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public execute()Lne/a0;
    .locals 3

    .line 1
    iget-object v0, p0, Lse/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lse/e;->f:Lse/e$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Laf/c;->v()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lse/e;->c()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 20
    .line 21
    invoke-virtual {v0}, Lne/w;->m()Lne/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lne/o;->a(Lse/e;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lse/e;->o()Lne/a0;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 33
    .line 34
    invoke-virtual {v1}, Lne/w;->m()Lne/o;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p0}, Lne/o;->d(Lse/e;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 44
    .line 45
    invoke-virtual {v1}, Lne/w;->m()Lne/o;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p0}, Lne/o;->d(Lse/e;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v1, "Already Executed"

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public final i(Lne/y;Z)V
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/e;->l:Lse/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_4

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lse/e;->n:Z

    .line 18
    .line 19
    xor-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v0, p0, Lse/e;->m:Z

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    new-instance p2, Lse/d;

    .line 33
    .line 34
    iget-object v0, p0, Lse/e;->d:Lse/g;

    .line 35
    .line 36
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lse/e;->f(Lne/t;)Lne/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lse/e;->e:Lne/q;

    .line 45
    .line 46
    invoke-direct {p2, v0, p1, p0, v1}, Lse/d;-><init>(Lse/g;Lne/a;Lse/e;Lne/q;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lse/e;->i:Lse/d;

    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    .line 53
    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :cond_3
    const-string p1, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 65
    .line 66
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1

    .line 79
    :cond_4
    const-string p1, "Check failed."

    .line 80
    .line 81
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2
.end method

.method public final j(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lse/e;->o:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lse/e;->q:Lse/c;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lse/c;->d()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lse/e;->l:Lse/c;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    :try_start_1
    const-string p1, "released"

    .line 24
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final k()Lne/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lse/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/e;->j:Lse/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lne/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/e;->e:Lne/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Lse/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lse/e;->l:Lse/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lne/a0;
    .locals 12

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 7
    .line 8
    invoke-virtual {v0}, Lne/w;->u()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 15
    .line 16
    .line 17
    new-instance v0, Lte/j;

    .line 18
    .line 19
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lte/j;-><init>(Lne/w;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v0, Lte/a;

    .line 28
    .line 29
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 30
    .line 31
    invoke-virtual {v1}, Lne/w;->l()Lne/m;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lte/a;-><init>(Lne/m;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v0, Lqe/a;

    .line 42
    .line 43
    iget-object v1, p0, Lse/e;->a:Lne/w;

    .line 44
    .line 45
    invoke-virtual {v1}, Lne/w;->d()Lne/c;

    .line 46
    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    invoke-direct {v0, v9}, Lqe/a;-><init>(Lne/c;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    sget-object v0, Lse/a;->a:Lse/a;

    .line 56
    .line 57
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lse/e;->c:Z

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 65
    .line 66
    invoke-virtual {v0}, Lne/w;->v()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-static {v2, v0}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    new-instance v0, Lte/b;

    .line 76
    .line 77
    iget-boolean v1, p0, Lse/e;->c:Z

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lte/b;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v10, Lte/g;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v4, 0x0

    .line 89
    iget-object v5, p0, Lse/e;->b:Lne/y;

    .line 90
    .line 91
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 92
    .line 93
    invoke-virtual {v0}, Lne/w;->i()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 98
    .line 99
    invoke-virtual {v0}, Lne/w;->C()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    iget-object v0, p0, Lse/e;->a:Lne/w;

    .line 104
    .line 105
    invoke-virtual {v0}, Lne/w;->H()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    move-object v0, v10

    .line 110
    move-object v1, p0

    .line 111
    invoke-direct/range {v0 .. v8}, Lte/g;-><init>(Lse/e;Ljava/util/List;ILse/c;Lne/y;III)V

    .line 112
    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lse/e;->b:Lne/y;

    .line 116
    .line 117
    invoke-virtual {v10, v1}, Lte/g;->a(Lne/y;)Lne/a0;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lse/e;->q()Z

    .line 122
    .line 123
    .line 124
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-nez v2, :cond_1

    .line 126
    .line 127
    invoke-virtual {p0, v9}, Lse/e;->t(Ljava/io/IOException;)Ljava/io/IOException;

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_1
    :try_start_1
    invoke-static {v1}, Loe/d;->l(Ljava/io/Closeable;)V

    .line 132
    .line 133
    .line 134
    new-instance v1, Ljava/io/IOException;

    .line 135
    .line 136
    const-string v2, "Canceled"

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :catchall_0
    move-exception v1

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const/4 v1, 0x1

    .line 146
    :try_start_2
    invoke-virtual {p0, v0}, Lse/e;->t(Ljava/io/IOException;)Ljava/io/IOException;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_2

    .line 151
    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    .line 153
    .line 154
    const-string v2, "null cannot be cast to non-null type kotlin.Throwable"

    .line 155
    .line 156
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    :catchall_1
    move-exception v0

    .line 162
    move v11, v1

    .line 163
    move-object v1, v0

    .line 164
    move v0, v11

    .line 165
    :goto_0
    if-nez v0, :cond_3

    .line 166
    .line 167
    invoke-virtual {p0, v9}, Lse/e;->t(Ljava/io/IOException;)Ljava/io/IOException;

    .line 168
    .line 169
    .line 170
    :cond_3
    throw v1
.end method

.method public final p(Lte/g;)Lse/c;
    .locals 4

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lse/e;->o:Z

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p0, Lse/e;->n:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lse/e;->m:Z

    .line 18
    .line 19
    xor-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    iget-object v0, p0, Lse/e;->i:Lse/d;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lse/e;->a:Lne/w;

    .line 31
    .line 32
    invoke-virtual {v0, v2, p1}, Lse/d;->a(Lne/w;Lte/g;)Lte/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v2, Lse/c;

    .line 37
    .line 38
    iget-object v3, p0, Lse/e;->e:Lne/q;

    .line 39
    .line 40
    invoke-direct {v2, p0, v3, v0, p1}, Lse/c;-><init>(Lse/e;Lne/q;Lse/d;Lte/d;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lse/e;->l:Lse/c;

    .line 44
    .line 45
    iput-object v2, p0, Lse/e;->q:Lse/c;

    .line 46
    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iput-boolean v1, p0, Lse/e;->m:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lse/e;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    iget-boolean p1, p0, Lse/e;->p:Z

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    return-object v2

    .line 58
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v0, "Canceled"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1

    .line 69
    :cond_1
    :try_start_2
    const-string p1, "Check failed."

    .line 70
    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_2
    const-string p1, "Check failed."

    .line 82
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_3
    const-string p1, "released"

    .line 94
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lse/e;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final r(Lse/c;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 1
    const-string v0, "exchange"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lse/e;->q:Lse/c;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object p4

    .line 15
    :cond_0
    monitor-enter p0

    .line 16
    const/4 p1, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-boolean v0, p0, Lse/e;->m:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    .line 27
    .line 28
    iget-boolean v0, p0, Lse/e;->n:Z

    .line 29
    .line 30
    if-eqz v0, :cond_7

    .line 31
    .line 32
    :cond_2
    if-eqz p2, :cond_3

    .line 33
    .line 34
    iput-boolean p1, p0, Lse/e;->m:Z

    .line 35
    .line 36
    :cond_3
    if-eqz p3, :cond_4

    .line 37
    .line 38
    iput-boolean p1, p0, Lse/e;->n:Z

    .line 39
    .line 40
    :cond_4
    iget-boolean p2, p0, Lse/e;->m:Z

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    if-nez p2, :cond_5

    .line 44
    .line 45
    iget-boolean v0, p0, Lse/e;->n:Z

    .line 46
    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    move v0, p3

    .line 50
    goto :goto_1

    .line 51
    :cond_5
    move v0, p1

    .line 52
    :goto_1
    if-nez p2, :cond_6

    .line 53
    .line 54
    iget-boolean p2, p0, Lse/e;->n:Z

    .line 55
    .line 56
    if-nez p2, :cond_6

    .line 57
    .line 58
    iget-boolean p2, p0, Lse/e;->o:Z

    .line 59
    .line 60
    if-nez p2, :cond_6

    .line 61
    .line 62
    move p1, p3

    .line 63
    :cond_6
    move p2, p1

    .line 64
    move p1, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_7
    move p2, p1

    .line 67
    :goto_2
    sget-object p3, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    if-eqz p1, :cond_9

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lse/e;->q:Lse/c;

    .line 74
    .line 75
    iget-object p1, p0, Lse/e;->j:Lse/f;

    .line 76
    .line 77
    if-nez p1, :cond_8

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_8
    invoke-virtual {p1}, Lse/f;->s()V

    .line 81
    .line 82
    .line 83
    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 84
    .line 85
    invoke-direct {p0, p4}, Lse/e;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_a
    return-object p4

    .line 91
    :goto_4
    monitor-exit p0

    .line 92
    throw p1
.end method

.method public final t(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lse/e;->o:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lse/e;->o:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lse/e;->m:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lse/e;->n:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    move v1, v0

    .line 19
    :cond_0
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lse/e;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_1
    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public final u()Ljava/net/Socket;
    .locals 7

    .line 1
    iget-object v0, p0, Lse/e;->j:Lse/f;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Loe/d;->h:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Thread "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " MUST hold lock on "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lse/f;->n()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    move v4, v3

    .line 66
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, -0x1

    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Ljava/lang/ref/Reference;

    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v5, p0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v4, v6

    .line 94
    :goto_2
    if-eq v4, v6, :cond_4

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    :cond_4
    if-eqz v3, :cond_6

    .line 98
    .line 99
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lse/e;->j:Lse/f;

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-virtual {v0, v3, v4}, Lse/f;->B(J)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lse/e;->d:Lse/g;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lse/g;->c(Lse/f;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Lse/f;->D()Ljava/net/Socket;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0

    .line 131
    :cond_5
    return-object v2

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v1, "Check failed."

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lse/e;->i:Lse/d;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lse/d;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final w(Lse/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lse/e;->r:Lse/f;

    .line 2
    .line 3
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lse/e;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lse/e;->k:Z

    .line 8
    .line 9
    iget-object v0, p0, Lse/e;->f:Lse/e$b;

    .line 10
    .line 11
    invoke-virtual {v0}, Laf/c;->w()Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Check failed."

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method
