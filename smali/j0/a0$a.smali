.class public final Lj0/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0/a0$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lid/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj0/a0$a;->f(Ljava/lang/String;Lid/l;)V

    return-void
.end method

.method public static final synthetic b(Lj0/a0$a;Ljava/io/File;Lid/l;)Ltd/a1;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/a0$a;->d(Ljava/io/File;Lid/l;)Ltd/a1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Ljava/io/File;Lid/l;)Ltd/a1;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lj0/a0;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lj0/a0;->c:Lj0/a0$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lj0/a0$a;->c()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "key"

    .line 21
    .line 22
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lj0/a0;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-direct {v2, p1, v3}, Lj0/a0;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_0
    check-cast v2, Lj0/a0;

    .line 41
    .line 42
    invoke-static {v2}, Lj0/a0;->a(Lj0/a0;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lj0/a0;->a(Lj0/a0;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v3, 0x1

    .line 58
    if-ne v1, v3, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 61
    .line 62
    .line 63
    :cond_1
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    monitor-exit v0

    .line 66
    new-instance v0, Lj0/z;

    .line 67
    .line 68
    invoke-direct {v0, p1, p2}, Lj0/z;-><init>(Ljava/lang/String;Lid/l;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0

    .line 74
    throw p1
.end method

.method private static final f(Ljava/lang/String;Lid/l;)V
    .locals 4

    .line 1
    const-string v0, "$observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lj0/a0;->c()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lj0/a0;->c:Lj0/a0$a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lj0/a0$a;->c()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lj0/a0;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {v2}, Lj0/a0;->a(Lj0/a0;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lj0/a0;->a(Lj0/a0;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lj0/a0$a;->c()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 50
    .line 51
    .line 52
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v0

    .line 58
    throw p0
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lj0/a0;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e(Ljava/io/File;)Lwd/d;
    .locals 2

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj0/a0$a$a;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lj0/a0$a$a;-><init>(Ljava/io/File;Lad/e;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lwd/f;->g(Lid/Function2;)Lwd/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
