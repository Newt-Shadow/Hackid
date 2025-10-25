.class public final Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ly0/b;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Set;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly0/b;

    .line 5
    .line 6
    invoke-direct {v0}, Ly0/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly0/c;->a:Ly0/b;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ly0/c;->b:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ly0/c;->c:Ljava/util/Set;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic a(Ly0/c;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly0/c;->f(Ljava/lang/AutoCloseable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Ly0/c;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Ly0/c;->c:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Ly0/c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ly0/c;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f(Ljava/lang/AutoCloseable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "closeable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Ly0/c;->d:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p2}, Ly0/c;->f(Ljava/lang/AutoCloseable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {p0}, Ly0/c;->c(Ly0/c;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    invoke-direct {p0, p1}, Ly0/c;->f(Ljava/lang/AutoCloseable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0

    .line 39
    throw p1
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly0/c;->d:Z

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
    iput-boolean v0, p0, Ly0/c;->d:Z

    .line 8
    .line 9
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {p0}, Ly0/c;->c(Ly0/c;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 35
    .line 36
    invoke-static {p0, v2}, Ly0/c;->a(Ly0/c;Ljava/lang/AutoCloseable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Ly0/c;->b(Ly0/c;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 59
    .line 60
    invoke-static {p0, v2}, Ly0/c;->a(Ly0/c;Ljava/lang/AutoCloseable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p0}, Ly0/c;->b(Ly0/c;)Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0

    .line 77
    throw v1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/AutoCloseable;
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {p0}, Ly0/c;->c(Ly0/c;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0

    .line 23
    throw p1
.end method
