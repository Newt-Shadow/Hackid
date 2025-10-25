.class public final Lio/sentry/android/replay/ReplayIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;
.implements Lio/sentry/android/replay/t;
.implements Lio/sentry/android/replay/gestures/c;
.implements Lio/sentry/y2;
.implements Landroid/content/ComponentCallbacks;
.implements Lio/sentry/l0$b;
.implements Lio/sentry/transport/z$b;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/ReplayIntegration$a;,
        Lio/sentry/android/replay/ReplayIntegration$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/transport/p;

.field private final c:Lid/a;

.field private final d:Lid/l;

.field private final e:Lid/l;

.field private f:Lio/sentry/s5;

.field private g:Lio/sentry/o0;

.field private h:Lio/sentry/android/replay/f;

.field private i:Lio/sentry/android/replay/gestures/a;

.field private final j:Lxc/d;

.field private final k:Lxc/d;

.field private final l:Lxc/d;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Lio/sentry/android/replay/capture/h;

.field private p:Lio/sentry/x2;

.field private q:Lid/l;

.field private r:Lio/sentry/android/replay/util/i;

.field private s:Lid/a;

.field private final t:Lio/sentry/android/replay/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/p;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lio/sentry/android/replay/util/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/p;Lid/a;Lid/l;Lid/l;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/transport/p;Lid/a;Lid/l;Lid/l;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->b:Lio/sentry/transport/p;

    .line 4
    iput-object p3, p0, Lio/sentry/android/replay/ReplayIntegration;->c:Lid/a;

    .line 5
    iput-object p4, p0, Lio/sentry/android/replay/ReplayIntegration;->d:Lid/l;

    .line 6
    iput-object p5, p0, Lio/sentry/android/replay/ReplayIntegration;->e:Lid/l;

    .line 7
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$f;->e:Lio/sentry/android/replay/ReplayIntegration$f;

    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->j:Lxc/d;

    .line 8
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$h;->e:Lio/sentry/android/replay/ReplayIntegration$h;

    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->k:Lxc/d;

    .line 9
    sget-object p1, Lio/sentry/android/replay/ReplayIntegration$g;->e:Lio/sentry/android/replay/ReplayIntegration$g;

    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lxc/d;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-static {}, Lio/sentry/a2;->a()Lio/sentry/a2;

    move-result-object p1

    const-string p2, "getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/x2;

    .line 13
    new-instance p1, Lio/sentry/android/replay/util/i;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lio/sentry/android/replay/util/i;-><init>(Landroid/os/Looper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lio/sentry/android/replay/util/i;

    .line 14
    new-instance p1, Lio/sentry/android/replay/l;

    invoke-direct {p1}, Lio/sentry/android/replay/l;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    return-void
.end method

.method private final declared-synchronized A0()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/android/replay/m;->RESUMED:Lio/sentry/android/replay/m;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->b(Lio/sentry/android/replay/m;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_7

    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "options"

    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_1
    invoke-virtual {v0}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lio/sentry/l0;->b()Lio/sentry/l0$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v2, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;

    .line 49
    .line 50
    if-eq v0, v2, :cond_7

    .line 51
    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sget-object v4, Lio/sentry/i;->All:Lio/sentry/i;

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v2, :cond_2

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v0, v3

    .line 75
    :goto_0
    if-nez v0, :cond_7

    .line 76
    .line 77
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    sget-object v4, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-ne v0, v2, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move v2, v3

    .line 97
    :goto_1
    if-eqz v2, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-interface {v0}, Lio/sentry/android/replay/capture/h;->resume()V

    .line 105
    .line 106
    .line 107
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    invoke-interface {v0}, Lio/sentry/android/replay/f;->resume()V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->d(Lio/sentry/android/replay/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 121
    :cond_7
    :goto_2
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_8
    :goto_3
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0

    .line 127
    throw v0
.end method

.method private final E()Lio/sentry/util/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->j:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/util/t;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 2
    .line 3
    instance-of v0, v0, Lio/sentry/android/replay/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->X()Lio/sentry/android/replay/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/sentry/android/replay/o;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 16
    .line 17
    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v1, Lio/sentry/android/replay/d;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->X()Lio/sentry/android/replay/o;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lio/sentry/android/replay/o;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->i:Lio/sentry/android/replay/gestures/a;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final P()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->l:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic j(Lkotlin/jvm/internal/c0;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->o0(Lkotlin/jvm/internal/c0;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic k(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/replay/ReplayIntegration;->z(Lio/sentry/android/replay/ReplayIntegration;)V

    return-void
.end method

.method private static final o0(Lkotlin/jvm/internal/c0;Lio/sentry/u0;)V
    .locals 3

    .line 1
    const-string v0, "$screen"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lio/sentry/u0;->C()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x2e

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {p1, v1, v0, v2, v0}, Lrd/n;->I0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    iput-object v0, p0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic q(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->u()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized q0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/android/replay/m;->PAUSED:Lio/sentry/android/replay/m;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->b(Lio/sentry/android/replay/m;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lio/sentry/android/replay/f;->pause()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Lio/sentry/android/replay/capture/h;->pause()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->d(Lio/sentry/android/replay/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_3
    :goto_0
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method

.method public static final synthetic s(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/android/replay/capture/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private final t0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 2
    .line 3
    instance-of v0, v0, Lio/sentry/android/replay/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->X()Lio/sentry/android/replay/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/sentry/android/replay/o;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 16
    .line 17
    const-string v2, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v1, Lio/sentry/android/replay/d;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->X()Lio/sentry/android/replay/o;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lio/sentry/android/replay/o;->e()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->i:Lio/sentry/android/replay/gestures/a;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 2
    .line 3
    instance-of v0, v0, Lio/sentry/android/replay/capture/m;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "options"

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lio/sentry/l0;->b()Lio/sentry/l0$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;

    .line 26
    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v3, Lio/sentry/i;->All:Lio/sentry/i;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v2

    .line 52
    :goto_0
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sget-object v3, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v1, v2

    .line 74
    :goto_1
    if-eqz v1, :cond_4

    .line 75
    .line 76
    :cond_3
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->q0()V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method private final v(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    new-instance v2, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const-string v2, "listFiles()"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v2, v0

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    if-ge v4, v2, :cond_3

    .line 38
    .line 39
    aget-object v5, v0, v4

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "name"

    .line 46
    .line 47
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v7, "replay_"

    .line 51
    .line 52
    const/4 v8, 0x2

    .line 53
    invoke-static {v6, v7, v3, v8, v1}, Lrd/n;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->W()Lio/sentry/protocol/r;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v9, "replayId.toString()"

    .line 68
    .line 69
    invoke-static {v7, v9}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v7, v3, v8, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_2

    .line 77
    .line 78
    invoke-static {p1}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    xor-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    invoke-static {v6, p1, v3, v8, v1}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_2

    .line 91
    .line 92
    :cond_1
    invoke-static {v5}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return-void
.end method

.method static synthetic w(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/ReplayIntegration;->v(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "options"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v3, "options.executorService"

    .line 17
    .line 18
    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v1, v3

    .line 30
    :goto_0
    new-instance v2, Lio/sentry/android/replay/j;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lio/sentry/android/replay/j;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "ReplayIntegration.finalize_previous_replay"

    .line 36
    .line 37
    invoke-static {v0, v1, v3, v2}, Lio/sentry/android/replay/util/g;->g(Lio/sentry/x0;Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final z(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 9
    .line 10
    const-string v2, "options"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-object v1, v3

    .line 19
    :cond_0
    invoke-virtual {v1}, Lio/sentry/s5;->findPersistingScopeObserver()Lio/sentry/cache/t;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget-object v5, v0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 27
    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v5, v3

    .line 34
    :cond_1
    const-string v6, "replay.json"

    .line 35
    .line 36
    const-class v7, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v5, v6, v7}, Lio/sentry/cache/t;->L(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_2
    new-instance v12, Lio/sentry/protocol/r;

    .line 49
    .line 50
    invoke-direct {v12, v5}, Lio/sentry/protocol/r;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v6, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 54
    .line 55
    invoke-static {v12, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->w(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    sget-object v6, Lio/sentry/android/replay/h;->j:Lio/sentry/android/replay/h$a;

    .line 66
    .line 67
    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 68
    .line 69
    if-nez v7, :cond_4

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v7, v3

    .line 75
    :cond_4
    iget-object v8, v0, Lio/sentry/android/replay/ReplayIntegration;->e:Lid/l;

    .line 76
    .line 77
    invoke-virtual {v6, v7, v12, v8}, Lio/sentry/android/replay/h$a;->c(Lio/sentry/s5;Lio/sentry/protocol/r;Lid/l;)Lio/sentry/android/replay/c;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-nez v6, :cond_5

    .line 82
    .line 83
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->w(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 88
    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v4, v3

    .line 95
    :cond_6
    const-string v7, "breadcrumbs.json"

    .line 96
    .line 97
    const-class v8, Ljava/util/List;

    .line 98
    .line 99
    invoke-virtual {v1, v4, v7, v8}, Lio/sentry/cache/t;->L(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    instance-of v4, v1, Ljava/util/List;

    .line 104
    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    check-cast v1, Ljava/util/List;

    .line 108
    .line 109
    move-object/from16 v21, v1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    move-object/from16 v21, v3

    .line 113
    .line 114
    :goto_0
    sget-object v1, Lio/sentry/android/replay/capture/h;->a:Lio/sentry/android/replay/capture/h$a;

    .line 115
    .line 116
    iget-object v7, v0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 117
    .line 118
    iget-object v4, v0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 119
    .line 120
    if-nez v4, :cond_8

    .line 121
    .line 122
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object v8, v3

    .line 126
    goto :goto_1

    .line 127
    :cond_8
    move-object v8, v4

    .line 128
    :goto_1
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->b()J

    .line 129
    .line 130
    .line 131
    move-result-wide v9

    .line 132
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->h()Ljava/util/Date;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->d()I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->e()Lio/sentry/android/replay/u;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->c()I

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->e()Lio/sentry/android/replay/u;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->d()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->e()Lio/sentry/android/replay/u;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->b()I

    .line 161
    .line 162
    .line 163
    move-result v18

    .line 164
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->e()Lio/sentry/android/replay/u;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->a()I

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->a()Lio/sentry/android/replay/h;

    .line 173
    .line 174
    .line 175
    move-result-object v17

    .line 176
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->f()Lio/sentry/t5$b;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->g()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v20

    .line 184
    new-instance v2, Ljava/util/LinkedList;

    .line 185
    .line 186
    move-object/from16 v22, v2

    .line 187
    .line 188
    invoke-virtual {v6}, Lio/sentry/android/replay/c;->c()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Ljava/util/Collection;

    .line 193
    .line 194
    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 195
    .line 196
    .line 197
    move-object v6, v1

    .line 198
    invoke-virtual/range {v6 .. v22}, Lio/sentry/android/replay/capture/h$a;->c(Lio/sentry/o0;Lio/sentry/s5;JLjava/util/Date;Lio/sentry/protocol/r;IIILio/sentry/t5$b;Lio/sentry/android/replay/h;IILjava/lang/String;Ljava/util/List;Ljava/util/Deque;)Lio/sentry/android/replay/capture/h$c;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    instance-of v2, v1, Lio/sentry/android/replay/capture/h$c$a;

    .line 203
    .line 204
    if-eqz v2, :cond_9

    .line 205
    .line 206
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$a;

    .line 207
    .line 208
    invoke-direct {v2}, Lio/sentry/android/replay/ReplayIntegration$a;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-static {v2}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v1, Lio/sentry/android/replay/capture/h$c$a;

    .line 216
    .line 217
    iget-object v3, v0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 218
    .line 219
    const-string v4, "hint"

    .line 220
    .line 221
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v3, v2}, Lio/sentry/android/replay/capture/h$c$a;->a(Lio/sentry/o0;Lio/sentry/c0;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    invoke-direct {v0, v5}, Lio/sentry/android/replay/ReplayIntegration;->v(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_a
    :goto_2
    invoke-static {v0, v3, v4, v3}, Lio/sentry/android/replay/ReplayIntegration;->w(Lio/sentry/android/replay/ReplayIntegration;Ljava/lang/String;ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method


# virtual methods
.method public D0(Lio/sentry/x2;)V
    .locals 1

    .line 1
    const-string v0, "converter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/x2;

    .line 7
    .line 8
    return-void
.end method

.method public final H()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/android/replay/capture/h;->j()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public W()Lio/sentry/protocol/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/android/replay/capture/h;->e()Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 12
    .line 13
    const-string v1, "EMPTY_ID"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object v0
.end method

.method public final X()Lio/sentry/android/replay/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->k:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/android/replay/o;

    .line 8
    .line 9
    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/sentry/android/replay/l;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lio/sentry/android/replay/capture/h;->a(Landroid/view/MotionEvent;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->d0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 18
    .line 19
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Lio/sentry/android/replay/capture/h;->e()Lio/sentry/protocol/r;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v1, v2

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    const-string p1, "options"

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v2, p1

    .line 47
    :goto_1
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 52
    .line 53
    const-string v1, "Replay id is not set, not capturing for event"

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$c;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lio/sentry/android/replay/ReplayIntegration$c;-><init>(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, p1, v1}, Lio/sentry/android/replay/capture/h;->d(ZLid/l;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 82
    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-interface {p1}, Lio/sentry/android/replay/capture/h;->g()Lio/sentry/android/replay/capture/h;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_5
    iput-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :cond_6
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    .line 97
    throw p1
.end method

.method public c(Lio/sentry/l0$a;)V
    .locals 1

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 7
    .line 8
    instance-of v0, v0, Lio/sentry/android/replay/capture/m;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->q0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->A0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/android/replay/m;->CLOSED:Lio/sentry/android/replay/m;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->b(Lio/sentry/android/replay/m;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "options"

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_1
    invoke-virtual {v0}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, p0}, Lio/sentry/l0;->d(Lio/sentry/l0$b;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lio/sentry/transport/z;->z(Lio/sentry/transport/z$b;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const-string v0, "options"

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v0, v1

    .line 62
    :cond_3
    invoke-virtual {v0}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lio/sentry/u5;->q()Z

    .line 67
    .line 68
    .line 69
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->stop()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 85
    .line 86
    .line 87
    :cond_5
    iput-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 88
    .line 89
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->X()Lio/sentry/android/replay/o;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lio/sentry/android/replay/o;->close()V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, "replayExecutor"

    .line 101
    .line 102
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 106
    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    const-string v2, "options"

    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    move-object v1, v2

    .line 116
    :goto_0
    invoke-static {v0, v1}, Lio/sentry/android/replay/util/g;->d(Ljava/util/concurrent/ExecutorService;Lio/sentry/s5;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 120
    .line 121
    sget-object v1, Lio/sentry/android/replay/m;->CLOSED:Lio/sentry/android/replay/m;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->d(Lio/sentry/android/replay/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 128
    :cond_7
    :goto_1
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    monitor-exit p0

    .line 132
    throw v0
.end method

.method public d0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/replay/l;->a()Lio/sentry/android/replay/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/android/replay/m;->STARTED:Lio/sentry/android/replay/m;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/android/replay/l;->a()Lio/sentry/android/replay/m;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lio/sentry/android/replay/m;->STOPPED:Lio/sentry/android/replay/m;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public e(Lio/sentry/transport/z;)V
    .locals 1

    .line 1
    const-string v0, "rateLimiter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 7
    .line 8
    instance-of v0, v0, Lio/sentry/android/replay/capture/m;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lio/sentry/i;->All:Lio/sentry/i;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->A0()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->q0()V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 4

    .line 1
    const-string v0, "hub"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 25
    .line 26
    const-string v0, "Session replay is only supported on API 26 and above"

    .line 27
    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lio/sentry/u5;->o()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/sentry/u5;->p()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 59
    .line 60
    const-string v0, "Session replay is disabled, no sample rate specified"

    .line 61
    .line 62
    new-array v1, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 69
    .line 70
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->c:Lid/a;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lio/sentry/android/replay/f;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    :cond_2
    new-instance v0, Lio/sentry/android/replay/y;

    .line 83
    .line 84
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->r:Lio/sentry/android/replay/util/i;

    .line 85
    .line 86
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "replayExecutor"

    .line 91
    .line 92
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p2, p0, v1, v2}, Lio/sentry/android/replay/y;-><init>(Lio/sentry/s5;Lio/sentry/android/replay/t;Lio/sentry/android/replay/util/i;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 99
    .line 100
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->s:Lid/a;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lio/sentry/android/replay/gestures/a;

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    :cond_4
    new-instance v0, Lio/sentry/android/replay/gestures/a;

    .line 113
    .line 114
    invoke-direct {v0, p2, p0}, Lio/sentry/android/replay/gestures/a;-><init>(Lio/sentry/s5;Lio/sentry/android/replay/gestures/c;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->i:Lio/sentry/android/replay/gestures/a;

    .line 118
    .line 119
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0, p0}, Lio/sentry/l0;->c(Lio/sentry/l0$b;)Z

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Lio/sentry/transport/z;->e(Lio/sentry/transport/z$b;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-virtual {p2}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lio/sentry/u5;->q()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->a:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_0
    move-exception p1

    .line 158
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 163
    .line 164
    const-string v1, "ComponentCallbacks is not available, orientation changes won\'t be handled by Session replay"

    .line 165
    .line 166
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_0
    const-string p1, "Replay"

    .line 170
    .line 171
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lio/sentry/h5;->c()Lio/sentry/h5;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string p2, "maven:io.sentry:sentry-android-replay"

    .line 179
    .line 180
    const-string v0, "7.22.4"

    .line 181
    .line 182
    invoke-virtual {p1, p2, v0}, Lio/sentry/h5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->x()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const-string v0, "bitmap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Lio/sentry/android/replay/k;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lio/sentry/android/replay/k;-><init>(Lkotlin/jvm/internal/c0;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v2, Lio/sentry/android/replay/ReplayIntegration$d;

    .line 28
    .line 29
    invoke-direct {v2, p1, v0, p0}, Lio/sentry/android/replay/ReplayIntegration$d;-><init>(Landroid/graphics/Bitmap;Lkotlin/jvm/internal/c0;Lio/sentry/android/replay/ReplayIntegration;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1, v2}, Lio/sentry/android/replay/capture/h;->f(Landroid/graphics/Bitmap;Lid/Function2;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public h()Lio/sentry/x2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->p:Lio/sentry/x2;

    .line 2
    .line 3
    return-object v0
.end method

.method public k0(Ljava/io/File;J)V
    .locals 2

    .line 1
    const-string v0, "screenshot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lio/sentry/android/replay/ReplayIntegration$e;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2, p3, p0}, Lio/sentry/android/replay/ReplayIntegration$e;-><init>(Ljava/io/File;JLio/sentry/android/replay/ReplayIntegration;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-static {v0, p2, v1, p1, p2}, Lio/sentry/android/replay/capture/h$b;->a(Lio/sentry/android/replay/capture/h;Landroid/graphics/Bitmap;Lid/Function2;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_7

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->d0()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lio/sentry/android/replay/f;->stop()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->d:Lid/l;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lio/sentry/android/replay/u;

    .line 39
    .line 40
    if-nez p1, :cond_4

    .line 41
    .line 42
    :cond_2
    sget-object p1, Lio/sentry/android/replay/u;->g:Lio/sentry/android/replay/u$a;

    .line 43
    .line 44
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->a:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    const-string v1, "options"

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    :cond_3
    invoke-virtual {v1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "options.sessionReplay"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lio/sentry/android/replay/u$a;->b(Landroid/content/Context;Lio/sentry/u5;)Lio/sentry/android/replay/u;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_4
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-interface {v0, p1}, Lio/sentry/android/replay/capture/h;->b(Lio/sentry/android/replay/u;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lio/sentry/android/replay/f;->start(Lio/sentry/android/replay/u;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 84
    .line 85
    invoke-virtual {p1}, Lio/sentry/android/replay/l;->a()Lio/sentry/android/replay/m;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v0, Lio/sentry/android/replay/m;->PAUSED:Lio/sentry/android/replay/m;

    .line 90
    .line 91
    if-ne p1, v0, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    invoke-interface {p1}, Lio/sentry/android/replay/f;->pause()V

    .line 98
    .line 99
    .line 100
    :cond_7
    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->q0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->A0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public declared-synchronized start()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 13
    .line 14
    sget-object v1, Lio/sentry/android/replay/m;->STARTED:Lio/sentry/android/replay/m;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->b(Lio/sentry/android/replay/m;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "options"

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v3, v0

    .line 35
    :goto_0
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 40
    .line 41
    const-string v3, "Session replay is already being recorded, not starting a new one"

    .line 42
    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->E()Lio/sentry/util/t;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    const-string v4, "options"

    .line 59
    .line 60
    invoke-static {v4}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v4, v3

    .line 64
    :cond_3
    invoke-virtual {v4}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lio/sentry/u5;->k()Ljava/lang/Double;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v0, v4}, Lio/sentry/android/replay/util/k;->a(Lio/sentry/util/t;Ljava/lang/Double;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_6

    .line 77
    .line 78
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 79
    .line 80
    if-nez v4, :cond_4

    .line 81
    .line 82
    const-string v4, "options"

    .line 83
    .line 84
    invoke-static {v4}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v4, v3

    .line 88
    :cond_4
    invoke-virtual {v4}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lio/sentry/u5;->p()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    const-string v0, "options"

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    move-object v3, v0

    .line 109
    :goto_1
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 114
    .line 115
    const-string v3, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified"

    .line 116
    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 124
    :cond_6
    :try_start_3
    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration;->d:Lid/l;

    .line 125
    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-interface {v2, v4}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lio/sentry/android/replay/u;

    .line 135
    .line 136
    if-nez v2, :cond_9

    .line 137
    .line 138
    :cond_7
    sget-object v2, Lio/sentry/android/replay/u;->g:Lio/sentry/android/replay/u$a;

    .line 139
    .line 140
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->a:Landroid/content/Context;

    .line 141
    .line 142
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 143
    .line 144
    if-nez v5, :cond_8

    .line 145
    .line 146
    const-string v5, "options"

    .line 147
    .line 148
    invoke-static {v5}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-object v5, v3

    .line 152
    :cond_8
    invoke-virtual {v5}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    const-string v6, "options.sessionReplay"

    .line 157
    .line 158
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v4, v5}, Lio/sentry/android/replay/u$a;->b(Landroid/content/Context;Lio/sentry/u5;)Lio/sentry/android/replay/u;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    :cond_9
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->q:Lid/l;

    .line 166
    .line 167
    if-eqz v4, :cond_a

    .line 168
    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-interface {v4, v5}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lio/sentry/android/replay/capture/h;

    .line 178
    .line 179
    if-nez v4, :cond_e

    .line 180
    .line 181
    :cond_a
    if-eqz v0, :cond_c

    .line 182
    .line 183
    new-instance v0, Lio/sentry/android/replay/capture/m;

    .line 184
    .line 185
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 186
    .line 187
    if-nez v4, :cond_b

    .line 188
    .line 189
    const-string v4, "options"

    .line 190
    .line 191
    invoke-static {v4}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    move-object v4, v3

    .line 195
    :cond_b
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 196
    .line 197
    iget-object v6, p0, Lio/sentry/android/replay/ReplayIntegration;->b:Lio/sentry/transport/p;

    .line 198
    .line 199
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    const-string v3, "replayExecutor"

    .line 204
    .line 205
    invoke-static {v7, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v8, p0, Lio/sentry/android/replay/ReplayIntegration;->e:Lid/l;

    .line 209
    .line 210
    move-object v3, v0

    .line 211
    invoke-direct/range {v3 .. v8}, Lio/sentry/android/replay/capture/m;-><init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_c
    new-instance v0, Lio/sentry/android/replay/capture/f;

    .line 216
    .line 217
    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->f:Lio/sentry/s5;

    .line 218
    .line 219
    if-nez v4, :cond_d

    .line 220
    .line 221
    const-string v4, "options"

    .line 222
    .line 223
    invoke-static {v4}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v4, v3

    .line 227
    :cond_d
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration;->g:Lio/sentry/o0;

    .line 228
    .line 229
    iget-object v6, p0, Lio/sentry/android/replay/ReplayIntegration;->b:Lio/sentry/transport/p;

    .line 230
    .line 231
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->E()Lio/sentry/util/t;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->P()Ljava/util/concurrent/ScheduledExecutorService;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    const-string v3, "replayExecutor"

    .line 240
    .line 241
    invoke-static {v8, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v9, p0, Lio/sentry/android/replay/ReplayIntegration;->e:Lid/l;

    .line 245
    .line 246
    move-object v3, v0

    .line 247
    invoke-direct/range {v3 .. v9}, Lio/sentry/android/replay/capture/f;-><init>(Lio/sentry/s5;Lio/sentry/o0;Lio/sentry/transport/p;Lio/sentry/util/t;Ljava/util/concurrent/ScheduledExecutorService;Lid/l;)V

    .line 248
    .line 249
    .line 250
    :goto_2
    move-object v4, v0

    .line 251
    :cond_e
    iput-object v4, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 252
    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v7, 0x0

    .line 255
    const/4 v8, 0x0

    .line 256
    const/16 v9, 0xe

    .line 257
    .line 258
    const/4 v10, 0x0

    .line 259
    move-object v5, v2

    .line 260
    invoke-static/range {v4 .. v10}, Lio/sentry/android/replay/capture/h$b;->b(Lio/sentry/android/replay/capture/h;Lio/sentry/android/replay/u;ILio/sentry/protocol/r;Lio/sentry/t5$b;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 264
    .line 265
    if-eqz v0, :cond_f

    .line 266
    .line 267
    invoke-interface {v0, v2}, Lio/sentry/android/replay/f;->start(Lio/sentry/android/replay/u;)V

    .line 268
    .line 269
    .line 270
    :cond_f
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->t0()V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->d(Lio/sentry/android/replay/m;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    .line 277
    .line 278
    monitor-exit p0

    .line 279
    return-void

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    monitor-exit p0

    .line 282
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/android/replay/m;->STOPPED:Lio/sentry/android/replay/m;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->b(Lio/sentry/android/replay/m;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/replay/ReplayIntegration;->J0()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->h:Lio/sentry/android/replay/f;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lio/sentry/android/replay/f;->stop()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->i:Lio/sentry/android/replay/gestures/a;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/sentry/android/replay/gestures/a;->c()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Lio/sentry/android/replay/capture/h;->stop()V

    .line 43
    .line 44
    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->o:Lio/sentry/android/replay/capture/h;

    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration;->t:Lio/sentry/android/replay/l;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/l;->d(Lio/sentry/android/replay/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_4
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method
