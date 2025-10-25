.class final Lcom/google/android/gms/measurement/internal/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li6/e;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pb;Li6/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kb;->a:Li6/e;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Lcom/google/android/gms/measurement/internal/pb;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Lcom/google/android/gms/measurement/internal/pb;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pb;->f(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/pb;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/vb;->W()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "Connected to remote service"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kb;->a:Li6/e;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/vb;->z(Li6/e;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kb;->b:Lcom/google/android/gms/measurement/internal/pb;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/pb;->c:Lcom/google/android/gms/measurement/internal/vb;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/vb;->Q(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v1
.end method
