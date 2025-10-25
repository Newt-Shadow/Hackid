.class Ls7/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Z

.field final synthetic d:Ls7/o;


# direct methods
.method public constructor <init>(Ls7/o;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Ls7/o$a;->d:Ls7/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ls7/o$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    iput-boolean p2, p0, Ls7/o$a;->c:Z

    .line 15
    .line 16
    new-instance p1, Ls7/e;

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    const/16 p2, 0x2000

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p2, 0x400

    .line 24
    .line 25
    :goto_0
    const/16 v0, 0x40

    .line 26
    .line 27
    invoke-direct {p1, v0, p2}, Ls7/e;-><init>(II)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p2, p1, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Ls7/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls7/o$a;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls7/o$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ls7/o$a;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Ls7/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ls7/n;-><init>(Ls7/o$a;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls7/o$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2, v0}, Lo1/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Ls7/o$a;->d:Ls7/o;

    .line 16
    .line 17
    invoke-static {v1}, Ls7/o;->c(Ls7/o;)Lr7/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Lr7/i;->b:Lr7/e;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ls7/e;

    .line 17
    .line 18
    invoke-virtual {v0}, Ls7/e;->a()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ls7/e;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Ls7/o$a;->d:Ls7/o;

    .line 40
    .line 41
    invoke-static {v1}, Ls7/o;->e(Ls7/o;)Ls7/g;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Ls7/o$a;->d:Ls7/o;

    .line 46
    .line 47
    invoke-static {v2}, Ls7/o;->d(Ls7/o;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-boolean v3, p0, Ls7/o$a;->c:Z

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0, v3}, Ls7/g;->r(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls7/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Ls7/e;->a()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ls7/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Ls7/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-object p1, p0, Ls7/o$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ls7/e;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 29
    .line 30
    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-direct {p0}, Ls7/o$a;->d()V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method
