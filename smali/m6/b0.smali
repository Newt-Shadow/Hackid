.class final Lm6/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/i0;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lm6/f;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lm6/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm6/b0;->b:Ljava/lang/Object;

    iput-object p1, p0, Lm6/b0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lm6/b0;->c:Lm6/f;

    return-void
.end method

.method static bridge synthetic a(Lm6/b0;)Lm6/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/b0;->c:Lm6/f;

    return-object p0
.end method

.method static bridge synthetic c(Lm6/b0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/b0;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b(Lm6/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm6/b0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm6/b0;->c:Lm6/f;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lm6/b0;->a:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v1, Lm6/a0;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lm6/a0;-><init>(Lm6/b0;Lm6/Task;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method
