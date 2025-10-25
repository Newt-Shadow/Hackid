.class public final Ls6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Le7/c0$b;


# direct methods
.method private constructor <init>(Le7/c0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls6/o;->a:Le7/c0$b;

    .line 5
    .line 6
    return-void
.end method

.method private declared-synchronized c(Le7/y;Le7/i0;)Le7/c0$c;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Ls6/o;->g()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sget-object v1, Le7/i0;->b:Le7/i0;

    .line 7
    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Le7/c0$c;->e0()Le7/c0$c$a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Le7/c0$c$a;->t(Le7/y;)Le7/c0$c$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Le7/c0$c$a;->u(I)Le7/c0$c$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Le7/z;->c:Le7/z;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Le7/c0$c$a;->w(Le7/z;)Le7/c0$c$a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Le7/c0$c$a;->v(Le7/i0;)Le7/c0$c$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Le7/c0$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-object p1

    .line 40
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 41
    .line 42
    const-string p2, "unknown output prefix type"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method private declared-synchronized e(I)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls6/o;->a:Le7/c0$b;

    .line 3
    .line 4
    invoke-virtual {v0}, Le7/c0$b;->w()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Le7/c0$c;

    .line 23
    .line 24
    invoke-virtual {v1}, Le7/c0$c;->a0()I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-ne v1, p1, :cond_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    monitor-exit p0

    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method private declared-synchronized f(Le7/a0;)Le7/c0$c;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ls6/x;->k(Le7/a0;)Le7/y;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1}, Le7/a0;->Z()Le7/i0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Ls6/o;->c(Le7/y;Le7/i0;)Le7/c0$c;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method private declared-synchronized g()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/t;->c()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    :goto_0
    invoke-direct {p0, v0}, Ls6/o;->e(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/crypto/tink/internal/t;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public static i()Ls6/o;
    .locals 2

    .line 1
    new-instance v0, Ls6/o;

    .line 2
    .line 3
    invoke-static {}, Le7/c0;->d0()Le7/c0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ls6/o;-><init>(Le7/c0$b;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static j(Ls6/n;)Ls6/o;
    .locals 1

    .line 1
    new-instance v0, Ls6/o;

    .line 2
    .line 3
    invoke-virtual {p0}, Ls6/n;->h()Le7/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/x;->T()Lcom/google/crypto/tink/shaded/protobuf/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Le7/c0$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ls6/o;-><init>(Le7/c0$b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ls6/l;)Ls6/o;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ls6/l;->b()Le7/a0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Ls6/o;->b(Le7/a0;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public declared-synchronized b(Le7/a0;Z)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Ls6/o;->f(Le7/a0;)Le7/c0$c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Ls6/o;->a:Le7/c0$b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Le7/c0$b;->t(Le7/c0$c;)Le7/c0$b;

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Ls6/o;->a:Le7/c0$b;

    .line 14
    .line 15
    invoke-virtual {p1}, Le7/c0$c;->a0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2, v0}, Le7/c0$b;->x(I)Le7/c0$b;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Le7/c0$c;->a0()I

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public declared-synchronized d()Ls6/n;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls6/o;->a:Le7/c0$b;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->j()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Le7/c0;

    .line 9
    .line 10
    invoke-static {v0}, Ls6/n;->e(Le7/c0;)Ls6/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized h(I)Ls6/o;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v1, p0, Ls6/o;->a:Le7/c0$b;

    .line 4
    .line 5
    invoke-virtual {v1}, Le7/c0$b;->v()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Ls6/o;->a:Le7/c0$b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Le7/c0$b;->u(I)Le7/c0$c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Le7/c0$c;->a0()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Le7/c0$c;->c0()Le7/z;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Le7/z;->c:Le7/z;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Ls6/o;->a:Le7/c0$b;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Le7/c0$b;->x(I)Le7/c0$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "cannot set key as primary because it\'s not enabled: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "key not found: "

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    monitor-exit p0

    .line 93
    throw p1
.end method
