.class public final Lz/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/e$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lz/e$a;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lz/e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lz/e;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lz/e;->a:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lz/e;->d:Z

    .line 12
    .line 13
    iget-object v0, p0, Lz/e;->b:Lz/e$a;

    .line 14
    .line 15
    iget-object v1, p0, Lz/e;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-interface {v0}, Lz/e$a;->a()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    check-cast v1, Landroid/os/CancellationSignal;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    monitor-enter p0

    .line 36
    :try_start_2
    iput-boolean v2, p0, Lz/e;->d:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    .line 40
    .line 41
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    throw v0

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    throw v0

    .line 46
    :cond_2
    :goto_2
    monitor-enter p0

    .line 47
    :try_start_4
    iput-boolean v2, p0, Lz/e;->d:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 56
    throw v0

    .line 57
    :catchall_3
    move-exception v0

    .line 58
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    throw v0
.end method

.method public b(Lz/e$a;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lz/e;->c()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lz/e;->b:Lz/e$a;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lz/e;->b:Lz/e$a;

    .line 12
    .line 13
    iget-boolean v0, p0, Lz/e;->a:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {p1}, Lz/e$a;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method
