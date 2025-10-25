.class public Lio/sentry/android/core/performance/g;
.super Lio/sentry/android/core/performance/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/performance/g$a;
    }
.end annotation


# static fields
.field private static n:J

.field private static volatile o:Lio/sentry/android/core/performance/g;


# instance fields
.field private a:Lio/sentry/android/core/performance/g$a;

.field private b:Z

.field private final c:Lio/sentry/android/core/performance/h;

.field private final d:Lio/sentry/android/core/performance/h;

.field private final e:Lio/sentry/android/core/performance/h;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/List;

.field private h:Lio/sentry/b1;

.field private i:Lio/sentry/x6;

.field private j:Z

.field private k:Z

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lio/sentry/android/core/performance/g;->n:J

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/a;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/sentry/android/core/performance/g$a;->UNKNOWN:Lio/sentry/android/core/performance/g$a;

    .line 5
    .line 6
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->a:Lio/sentry/android/core/performance/g$a;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->i:Lio/sentry/x6;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->j:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lio/sentry/android/core/performance/g;->k:Z

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lio/sentry/android/core/performance/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lio/sentry/android/core/performance/g;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Lio/sentry/android/core/performance/h;

    .line 34
    .line 35
    invoke-direct {v0}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 39
    .line 40
    new-instance v0, Lio/sentry/android/core/performance/h;

    .line 41
    .line 42
    invoke-direct {v0}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->d:Lio/sentry/android/core/performance/h;

    .line 46
    .line 47
    new-instance v0, Lio/sentry/android/core/performance/h;

    .line 48
    .line 49
    invoke-direct {v0}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->e:Lio/sentry/android/core/performance/h;

    .line 53
    .line 54
    new-instance v0, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->f:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->g:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {}, Lio/sentry/android/core/x0;->u()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/performance/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/g;->s()V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/performance/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/g;->v()V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/core/performance/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/g;->t()V

    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/performance/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/g;->u()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/sentry/android/core/performance/f;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lio/sentry/android/core/performance/f;-><init>(Lio/sentry/android/core/performance/g;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static p()Lio/sentry/android/core/performance/g;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/android/core/performance/g;->o:Lio/sentry/android/core/performance/g;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lio/sentry/android/core/performance/g;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lio/sentry/android/core/performance/g;->o:Lio/sentry/android/core/performance/g;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lio/sentry/android/core/performance/g;

    .line 13
    .line 14
    invoke-direct {v1}, Lio/sentry/android/core/performance/g;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lio/sentry/android/core/performance/g;->o:Lio/sentry/android/core/performance/g;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/android/core/performance/g;->o:Lio/sentry/android/core/performance/g;

    .line 25
    .line 26
    return-object v0
.end method

.method private synthetic s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lio/sentry/b1;->isRunning()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 23
    .line 24
    invoke-interface {v0}, Lio/sentry/b1;->close()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private synthetic t()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/performance/g;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic u()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/core/performance/g;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic v()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/performance/g;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lio/sentry/x6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/performance/g;->i:Lio/sentry/x6;

    .line 2
    .line 3
    return-void
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/performance/g;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public e(Lio/sentry/android/core/performance/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/performance/g;->g:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public h()Lio/sentry/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lio/sentry/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->i:Lio/sentry/x6;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/sentry/android/core/performance/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->a:Lio/sentry/android/core/performance/g$a;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/android/core/performance/g$a;->UNKNOWN:Lio/sentry/android/core/performance/g$a;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-wide/16 v0, 0x1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->s()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->f()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    cmp-long v2, v2, v4

    .line 40
    .line 41
    if-gtz v2, :cond_0

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->s()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->f()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    cmp-long v0, v2, v0

    .line 65
    .line 66
    if-gtz v0, :cond_1

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    new-instance p1, Lio/sentry/android/core/performance/h;

    .line 70
    .line 71
    invoke-direct {p1}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public l()Lio/sentry/android/core/performance/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->a:Lio/sentry/android/core/performance/g$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lio/sentry/android/core/performance/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->e:Lio/sentry/android/core/performance/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()J
    .locals 2

    .line 1
    sget-wide v0, Lio/sentry/android/core/performance/g;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/performance/g;->f:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p1, v2, :cond_3

    .line 13
    .line 14
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_3

    .line 21
    .line 22
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->p()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sub-long v3, v0, v3

    .line 29
    .line 30
    iget-boolean p1, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    cmp-long p1, v3, v5

    .line 43
    .line 44
    if-lez p1, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    .line 49
    sget-object p1, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Lio/sentry/android/core/performance/g$a;->WARM:Lio/sentry/android/core/performance/g$a;

    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/performance/g;->a:Lio/sentry/android/core/performance/g$a;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    sget-object p1, Lio/sentry/android/core/performance/g$a;->WARM:Lio/sentry/android/core/performance/g$a;

    .line 58
    .line 59
    iput-object p1, p0, Lio/sentry/android/core/performance/g;->a:Lio/sentry/android/core/performance/g$a;

    .line 60
    .line 61
    iput-boolean v2, p0, Lio/sentry/android/core/performance/g;->k:Z

    .line 62
    .line 63
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 64
    .line 65
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->u()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 69
    .line 70
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->z()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->c:Lio/sentry/android/core/performance/h;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 76
    .line 77
    .line 78
    sput-wide v0, Lio/sentry/android/core/performance/g;->n:J

    .line 79
    .line 80
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->f:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lio/sentry/android/core/performance/g;->e:Lio/sentry/android/core/performance/h;

    .line 86
    .line 87
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->u()V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 91
    .line 92
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->k:Z

    .line 20
    .line 21
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lio/sentry/android/core/performance/c;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/c;-><init>(Lio/sentry/android/core/performance/g;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lio/sentry/android/core/p0;

    .line 22
    .line 23
    invoke-static {}, Lio/sentry/z1;->e()Lio/sentry/z1;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lio/sentry/android/core/internal/util/k;->f(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/p0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lio/sentry/android/core/performance/d;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/d;-><init>(Lio/sentry/android/core/performance/g;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public q()Lio/sentry/android/core/performance/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->d:Lio/sentry/android/core/performance/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->f:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method declared-synchronized x()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/performance/g;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->A()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->A()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public y(Landroid/app/Application;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/performance/g;->j:Z

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
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->j:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-static {}, Lio/sentry/android/core/x0;->u()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lio/sentry/android/core/performance/g;->b:Z

    .line 22
    .line 23
    sget-object v0, Lio/sentry/android/core/performance/g;->o:Lio/sentry/android/core/performance/g;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lio/sentry/android/core/performance/e;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lio/sentry/android/core/performance/e;-><init>(Lio/sentry/android/core/performance/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public z(Lio/sentry/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/performance/g;->h:Lio/sentry/b1;

    .line 2
    .line 3
    return-void
.end method
