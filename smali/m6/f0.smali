.class final Lm6/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/i0;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lm6/h;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lm6/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm6/f0;->b:Ljava/lang/Object;

    iput-object p1, p0, Lm6/f0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lm6/f0;->c:Lm6/h;

    return-void
.end method

.method static bridge synthetic a(Lm6/f0;)Lm6/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/f0;->c:Lm6/h;

    return-object p0
.end method

.method static bridge synthetic c(Lm6/f0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/f0;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b(Lm6/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lm6/f0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lm6/f0;->c:Lm6/h;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lm6/f0;->a:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v1, Lm6/e0;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lm6/e0;-><init>(Lm6/f0;Lm6/Task;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_1
    return-void
.end method
