.class public final Lgb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Leb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/s$a;
    }
.end annotation


# static fields
.field private static final k:Lgb/s$a;

.field private static volatile l:Z

.field private static volatile m:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lfb/b;

.field private final c:Lgb/b;

.field private final d:Landroidx/lifecycle/i;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;

.field private final i:J

.field private j:Leb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgb/s;->k:Lgb/s$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfb/b;Lgb/b;Landroidx/lifecycle/i;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgb/s;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lgb/s;->b:Lfb/b;

    .line 4
    iput-object p3, p0, Lgb/s;->c:Lgb/b;

    .line 5
    iput-object p4, p0, Lgb/s;->d:Landroidx/lifecycle/i;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb/s;->e:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lgb/s;->f:Ljava/util/Timer;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lgb/s;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 p1, 0x1b7740

    .line 9
    iput-wide p1, p0, Lgb/s;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lfb/b;Lgb/b;Landroidx/lifecycle/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 10
    sget-object p4, Landroidx/lifecycle/ProcessLifecycleOwner;->i:Landroidx/lifecycle/ProcessLifecycleOwner$b;

    invoke-virtual {p4}, Landroidx/lifecycle/ProcessLifecycleOwner$b;->a()Landroidx/lifecycle/m;

    move-result-object p4

    invoke-interface {p4}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object p4

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lgb/s;-><init>(Landroid/content/Context;Lfb/b;Lgb/b;Landroidx/lifecycle/i;)V

    return-void
.end method

.method public static synthetic d(Lgb/s;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lgb/s;->i(Lgb/s;)V

    return-void
.end method

.method public static synthetic e(Lgb/s;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lgb/s;->m(Lgb/s;)V

    return-void
.end method

.method public static final synthetic f(Lgb/s;)Leb/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lgb/s;->j:Leb/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/s;->d:Landroidx/lifecycle/i;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgb/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lgb/s;->g:Ljava/util/TimerTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lgb/s;->g:Ljava/util/TimerTask;

    .line 13
    .line 14
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method private static final i(Lgb/s;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgb/s;->g()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/s;->d:Landroidx/lifecycle/i;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgb/s;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lgb/s;->h()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lgb/s$b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lgb/s$b;-><init>(Lgb/s;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lgb/s;->g:Ljava/util/TimerTask;

    .line 13
    .line 14
    iget-object v2, p0, Lgb/s;->f:Ljava/util/Timer;

    .line 15
    .line 16
    iget-wide v3, p0, Lgb/s;->i:J

    .line 17
    .line 18
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
.end method

.method private final l()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lgb/s;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lgb/s;->b:Lfb/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->f()Llb/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Llb/g;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lgb/s;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v4, v2, v4

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-wide v4, p0, Lgb/s;->i:J

    .line 27
    .line 28
    add-long/2addr v2, v4

    .line 29
    cmp-long v2, v2, v0

    .line 30
    .line 31
    if-gtz v2, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lgb/s;->j:Leb/h;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Leb/h;->f()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lgb/s;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final m(Lgb/s;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgb/s;->j()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lgb/s;->m:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lgb/s;->j:Leb/h;

    .line 6
    .line 7
    iget-object v0, p0, Lgb/s;->c:Lgb/b;

    .line 8
    .line 9
    invoke-static {v0}, Lgb/o;->m(Lgb/b;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lgb/s;->j()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lgb/s;->c:Lgb/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lgb/b;->a()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lgb/q;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lgb/q;-><init>(Lgb/s;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lgb/s;->b:Lfb/b;

    .line 36
    .line 37
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Failed to uninstall PostHogLifecycleObserverIntegration: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method public c(Leb/h;)V
    .locals 3

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lgb/s;->m:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lgb/s;->m:Z

    .line 13
    .line 14
    :try_start_0
    iput-object p1, p0, Lgb/s;->j:Leb/h;

    .line 15
    .line 16
    iget-object p1, p0, Lgb/s;->c:Lgb/b;

    .line 17
    .line 18
    invoke-static {p1}, Lgb/o;->m(Lgb/b;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lgb/s;->g()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lgb/s;->c:Lgb/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Lgb/b;->a()Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lgb/r;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lgb/r;-><init>(Lgb/s;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lgb/s;->b:Lfb/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Failed to install PostHogLifecycleObserverIntegration: "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public onStart(Landroidx/lifecycle/m;)V
    .locals 9

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lgb/s;->l()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lgb/s;->b:Lfb/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lfb/b;->g0()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-boolean p1, Lgb/s;->l:Z

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "from_background"

    .line 29
    .line 30
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-boolean p1, Lgb/s;->l:Z

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lgb/s;->a:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v0, p0, Lgb/s;->b:Lfb/b;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lgb/o;->i(Landroid/content/Context;Lfb/b;)Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "packageInfo.versionName"

    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v1, "version"

    .line 55
    .line 56
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lgb/o;->r(Landroid/content/pm/PackageInfo;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "build"

    .line 68
    .line 69
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    const/4 p1, 0x1

    .line 73
    sput-boolean p1, Lgb/s;->l:Z

    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lgb/s;->j:Leb/h;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-string v1, "Application Opened"

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/16 v7, 0x3a

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public onStop(Landroidx/lifecycle/m;)V
    .locals 9

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgb/s;->b:Lfb/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lfb/b;->g0()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lgb/s;->j:Leb/h;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "Application Backgrounded"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/16 v7, 0x3e

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lgb/s;->b:Lfb/b;

    .line 32
    .line 33
    invoke-virtual {p1}, Leb/d;->f()Llb/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Llb/g;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object p1, p0, Lgb/s;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lgb/s;->k()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
