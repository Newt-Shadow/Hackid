.class public final Leb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/c$a;
    }
.end annotation


# static fields
.field public static final A:Leb/c$a;

.field private static B:Leb/h;

.field private static C:Leb/h;

.field private static final D:Ljava/util/Set;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Z

.field private volatile f:Z

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private n:Leb/d;

.field private o:Llb/u;

.field private p:Llb/q;

.field private q:Llb/q;

.field private r:Llb/j;

.field private final s:Ljava/util/Map;

.field private t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

.field private u:Lmb/a;

.field private v:Z

.field private w:Z

.field private final x:Leb/i;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Leb/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Leb/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Leb/c;->A:Leb/c$a;

    .line 8
    .line 9
    new-instance v0, Leb/c;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/16 v8, 0x1f

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    move-object v2, v0

    .line 20
    invoke-direct/range {v2 .. v9}, Leb/c;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Leb/c;->B:Leb/h;

    .line 24
    .line 25
    sput-object v0, Leb/c;->C:Leb/h;

    .line 26
    .line 27
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Leb/c;->D:Ljava/util/Set;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Leb/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Leb/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p3, p0, Leb/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p4, p0, Leb/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-boolean p5, p0, Leb/c;->e:Z

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->g:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->h:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->i:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->j:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->k:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->l:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/c;->m:Ljava/lang/Object;

    .line 14
    new-instance p1, Llb/j;

    invoke-direct {p1}, Llb/j;-><init>()V

    iput-object p1, p0, Leb/c;->r:Llb/j;

    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Leb/c;->s:Ljava/util/Map;

    .line 16
    new-instance p1, Leb/b;

    invoke-direct {p1, p0}, Leb/b;-><init>(Leb/c;)V

    iput-object p1, p0, Leb/c;->x:Leb/i;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 17
    new-instance p1, Llb/d0;

    const-string p7, "PostHogQueueThread"

    invoke-direct {p1, p7}, Llb/d0;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string p7, "newSingleThreadScheduled\u2026gQueueThread\"),\n        )"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 19
    new-instance p1, Llb/d0;

    const-string p2, "PostHogReplayQueueThread"

    invoke-direct {p1, p2}, Llb/d0;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    const-string p1, "newSingleThreadScheduled\u2026yQueueThread\"),\n        )"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 21
    new-instance p1, Llb/d0;

    const-string p2, "PostHogRemoteConfigThread"

    invoke-direct {p1, p2}, Llb/d0;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    const-string p1, "newSingleThreadScheduled\u2026ConfigThread\"),\n        )"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 23
    new-instance p1, Llb/d0;

    const-string p2, "PostHogSendCachedEventsThread"

    invoke-direct {p1, p2}, Llb/d0;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p4

    const-string p1, "newSingleThreadScheduled\u2026EventsThread\"),\n        )"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x1

    :cond_4
    move v5, p5

    move-object v0, p0

    .line 25
    invoke-direct/range {v0 .. v5}, Leb/c;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method private final A()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "distinctId"

    .line 6
    .line 7
    invoke-direct {p0}, Leb/c;->z()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Llb/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    :cond_1
    return-object v0
.end method

.method private final B()Llb/m;
    .locals 1

    .line 1
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Leb/c;->r:Llb/j;

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method private final C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->u()Leb/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    sget-object v2, Leb/a;->a:Leb/a;

    .line 13
    .line 14
    if-eq v0, v2, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Leb/d;->u()Leb/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    sget-object v0, Leb/a;->c:Leb/a;

    .line 25
    .line 26
    if-ne v1, v0, :cond_2

    .line 27
    .line 28
    invoke-direct {p0}, Leb/c;->F()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Leb/c;->G()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    :goto_1
    return v0
.end method

.method private static final D(Leb/c;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leb/c;->t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Leb/c;->I()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Leb/c;->V(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final E()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Leb/c;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "Setup isn\'t called."

    .line 16
    .line 17
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Leb/c;->f:Z

    .line 21
    .line 22
    return v0
.end method

.method private final F()Z
    .locals 5

    .line 1
    iget-object v0, p0, Leb/c;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Leb/c;->v:Z

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "isIdentified"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v1, v2, v4, v3, v4}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Ljava/lang/Boolean;

    .line 26
    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-direct {p0}, Leb/c;->A()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {p0}, Leb/c;->z()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    move v2, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-direct {p0, v2}, Leb/c;->T(Z)V

    .line 53
    .line 54
    .line 55
    iput-boolean v1, p0, Leb/c;->v:Z

    .line 56
    .line 57
    :cond_3
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    iget-boolean v0, p0, Leb/c;->y:Z

    .line 61
    .line 62
    return v0

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0

    .line 65
    throw v1
.end method

.method private final G()Z
    .locals 5

    .line 1
    iget-object v0, p0, Leb/c;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Leb/c;->w:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "personProcessingEnabled"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v1, v2, v4, v3, v4}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Ljava/lang/Boolean;

    .line 26
    .line 27
    :cond_0
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-direct {p0, v1}, Leb/c;->U(Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Leb/c;->w:Z

    .line 40
    .line 41
    :cond_2
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    iget-boolean v0, p0, Leb/c;->z:Z

    .line 45
    .line 46
    return v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    .line 49
    throw v1
.end method

.method private final I()Z
    .locals 3

    .line 1
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method private final J()Z
    .locals 3

    .line 1
    iget-object v0, p0, Leb/c;->o:Llb/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Llb/u;->n()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method private final K(Leb/d;Llb/b0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Leb/d;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v3, v2, v3}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v3

    .line 23
    :goto_0
    if-eqz v0, :cond_9

    .line 24
    .line 25
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v2, Leb/c$b;

    .line 35
    .line 36
    invoke-direct {v2}, Leb/c$b;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2, v1, v2}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/util/Map;

    .line 48
    .line 49
    if-eqz p2, :cond_9

    .line 50
    .line 51
    const-string v1, "anonymousId"

    .line 52
    .line 53
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v2, v1, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object v1, v3

    .line 65
    :goto_1
    const-string v2, "distinctId"

    .line 66
    .line 67
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    instance-of v2, p2, Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    move-object v3, p2

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    .line 78
    :cond_2
    const/4 p2, 0x0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-static {v1}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v4, p2

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    :goto_2
    move v4, v2

    .line 92
    :goto_3
    if-nez v4, :cond_5

    .line 93
    .line 94
    invoke-direct {p0, v1}, Leb/c;->R(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    if-eqz v3, :cond_6

    .line 98
    .line 99
    invoke-static {v3}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    :cond_6
    move p2, v2

    .line 106
    :cond_7
    if-nez p2, :cond_8

    .line 107
    .line 108
    invoke-direct {p0, v3}, Leb/c;->S(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p1}, Leb/d;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {p2, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catchall_0
    move-exception p2

    .line 126
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "Legacy cached prefs: "

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " failed to parse: "

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const/16 p2, 0x2e

    .line 152
    .line 153
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 164
    .line 165
    :cond_9
    :goto_4
    return-void
.end method

.method private final L(Leb/i;Leb/i;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "groups"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v2, v3, v1, v3}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    move-object v7, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v7, v3

    .line 22
    :goto_0
    invoke-direct {p0}, Leb/c;->A()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Leb/d;->A()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0}, Leb/c;->z()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_2
    move-object v6, v3

    .line 46
    invoke-static {v5}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Leb/c;->n:Leb/d;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v0, "Feature flags not loaded, distinctId is invalid: "

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void

    .line 83
    :cond_4
    iget-object v4, p0, Leb/c;->o:Llb/u;

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    move-object v8, p1

    .line 88
    move-object v9, p2

    .line 89
    invoke-virtual/range {v4 .. v9}, Llb/u;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void
.end method

.method private final M(Leb/i;Leb/i;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "groups"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v2, v3, v1, v3}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    move-object v7, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v7, v3

    .line 22
    :goto_0
    invoke-direct {p0}, Leb/c;->A()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Leb/d;->A()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0}, Leb/c;->z()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_2
    move-object v6, v3

    .line 46
    iget-object v4, p0, Leb/c;->o:Llb/u;

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    move-object v8, p1

    .line 51
    move-object v9, p2

    .line 52
    invoke-virtual/range {v4 .. v9}, Llb/u;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private final N(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "groups"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v2, v3, v1, v3}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v3

    .line 21
    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move-object v3, v1

    .line 44
    :goto_1
    return-object v3
.end method

.method private final O(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Leb/d;->u()Leb/a;

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
    sget-object v1, Leb/a;->a:Leb/a;

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Leb/c;->n:Leb/d;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " was called, but `personProfiles` is set to `never`. This call will be ignored."

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_2
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1}, Leb/c;->U(Z)V

    .line 51
    .line 52
    .line 53
    return p1
.end method

.method static synthetic P(Leb/c;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Leb/c;->O(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final Q(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Leb/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Leb/c;->s:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Leb/c;->s:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move v1, v4

    .line 38
    :goto_0
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Leb/d;->D()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v4, :cond_2

    .line 50
    .line 51
    move v3, v4

    .line 52
    :cond_2
    if-eqz v3, :cond_8

    .line 53
    .line 54
    if-eqz v1, :cond_8

    .line 55
    .line 56
    iget-object v0, p0, Leb/c;->o:Llb/u;

    .line 57
    .line 58
    if-eqz v0, :cond_8

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Llb/u;->j(Ljava/lang/String;)Lcom/posthog/internal/FeatureFlag;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0}, Llb/u;->k()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "$feature_flag"

    .line 74
    .line 75
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string p1, "$feature_flag_response"

    .line 79
    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    const-string p2, ""

    .line 83
    .line 84
    :cond_3
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string p1, "$feature_flag_request_id"

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    const-string v0, ""

    .line 92
    .line 93
    :cond_4
    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    const-string p1, "$feature_flag_id"

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p2}, Lcom/posthog/internal/FeatureFlagMetadata;->getId()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string p1, "$feature_flag_version"

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2}, Lcom/posthog/internal/FeatureFlagMetadata;->getVersion()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const-string p1, "$feature_flag_reason"

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlag;->getReason()Lcom/posthog/internal/EvaluationReason;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/posthog/internal/EvaluationReason;->getDescription()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-nez p2, :cond_6

    .line 145
    .line 146
    :cond_5
    const-string p2, ""

    .line 147
    .line 148
    :cond_6
    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_7
    const-string v3, "$feature_flag_called"

    .line 152
    .line 153
    const/4 v4, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    const/16 v9, 0x3a

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    move-object v2, p0

    .line 161
    invoke-static/range {v2 .. v10}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    return-void

    .line 165
    :catchall_0
    move-exception p1

    .line 166
    monitor-exit v0

    .line 167
    throw p1
.end method

.method private final R(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "anonymousId"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final S(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "distinctId"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final T(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Leb/c;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Leb/c;->y:Z

    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "isIdentified"

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v1, v2, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    .line 25
    throw p1
.end method

.method private final U(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Leb/c;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Leb/c;->z:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Leb/c;->z:Z

    .line 9
    .line 10
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "personProcessingEnabled"

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v1, v2, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    .line 29
    throw p1
.end method

.method public static synthetic b(Leb/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Leb/c;->D(Leb/c;)V

    return-void
.end method

.method public static final synthetic c()Leb/h;
    .locals 1

    .line 1
    sget-object v0, Leb/c;->B:Leb/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Leb/c;)Lmb/a;
    .locals 0

    .line 1
    iget-object p0, p0, Leb/c;->u:Lmb/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private final x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/PostHogEvent;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Leb/c;->n:Leb/d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->w()Leb/j;

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/posthog/PostHogEvent;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/16 v12, 0x1f8

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    move-object v2, v0

    .line 21
    move-object v3, p1

    .line 22
    move-object/from16 v4, p2

    .line 23
    .line 24
    move-object/from16 v5, p3

    .line 25
    .line 26
    invoke-direct/range {v2 .. v13}, Lcom/posthog/PostHogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Leb/c;->n:Leb/d;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Leb/d;->c()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v3, v0

    .line 65
    iget-object v0, v1, Leb/c;->n:Leb/d;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "Error in beforeSend function: "

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v0, v3}, Llb/i;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-object v2
.end method

.method private final y(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    if-eqz p6, :cond_c

    .line 16
    .line 17
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-interface {v8}, Llb/m;->getAll()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    xor-int/2addr v9, v7

    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    invoke-interface {v4, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v8, v0, Leb/c;->n:Leb/d;

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    invoke-virtual {v8}, Leb/d;->e()Llb/f;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    if-eqz v8, :cond_1

    .line 44
    .line 45
    invoke-interface {v8}, Llb/f;->b()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    invoke-interface {v4, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v8, v0, Leb/c;->n:Leb/d;

    .line 55
    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    invoke-virtual {v8}, Leb/d;->e()Llb/f;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz v8, :cond_2

    .line 63
    .line 64
    invoke-interface {v8}, Llb/f;->a()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    invoke-interface {v4, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v8, v0, Leb/c;->n:Leb/d;

    .line 74
    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    invoke-virtual {v8}, Leb/d;->D()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-ne v8, v7, :cond_3

    .line 82
    .line 83
    move v8, v7

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move v8, v6

    .line 86
    :goto_0
    if-eqz v8, :cond_8

    .line 87
    .line 88
    iget-object v8, v0, Leb/c;->o:Llb/u;

    .line 89
    .line 90
    if-eqz v8, :cond_8

    .line 91
    .line 92
    invoke-virtual {v8}, Llb/u;->i()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz v8, :cond_8

    .line 97
    .line 98
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    xor-int/2addr v9, v7

    .line 103
    if-eqz v9, :cond_8

    .line 104
    .line 105
    new-instance v9, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_7

    .line 123
    .line 124
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Ljava/util/Map$Entry;

    .line 129
    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v12, "$feature/"

    .line 136
    .line 137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    check-cast v12, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    instance-of v12, v11, Ljava/lang/Boolean;

    .line 165
    .line 166
    if-eqz v12, :cond_5

    .line 167
    .line 168
    check-cast v11, Ljava/lang/Boolean;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move-object v11, v5

    .line 172
    :goto_2
    if-eqz v11, :cond_6

    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move v11, v7

    .line 180
    :goto_3
    if-eqz v11, :cond_4

    .line 181
    .line 182
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    const-string v8, "$active_feature_flags"

    .line 191
    .line 192
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_8
    if-eqz v2, :cond_9

    .line 196
    .line 197
    const-string v8, "$set"

    .line 198
    .line 199
    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_9
    if-eqz v3, :cond_a

    .line 203
    .line 204
    const-string v2, "$set_once"

    .line 205
    .line 206
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_a
    if-eqz p7, :cond_b

    .line 210
    .line 211
    move-object/from16 v2, p5

    .line 212
    .line 213
    invoke-direct {p0, v2}, Leb/c;->N(Ljava/util/Map;)Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v2, :cond_b

    .line 218
    .line 219
    const-string v3, "$groups"

    .line 220
    .line 221
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :cond_b
    invoke-direct {p0}, Leb/c;->F()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const-string v3, "$is_identified"

    .line 233
    .line 234
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Leb/c;->C()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    const-string v3, "$process_person_profile"

    .line 246
    .line 247
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_c
    iget-object v2, v0, Leb/c;->n:Leb/d;

    .line 251
    .line 252
    if-eqz v2, :cond_d

    .line 253
    .line 254
    invoke-virtual {v2}, Leb/d;->e()Llb/f;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_d

    .line 259
    .line 260
    invoke-interface {v2}, Llb/f;->c()Ljava/util/Map;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-eqz v2, :cond_d

    .line 265
    .line 266
    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 267
    .line 268
    .line 269
    :cond_d
    invoke-virtual {p0}, Leb/c;->p()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    sget-object v3, Llb/c0;->a:Llb/c0;

    .line 274
    .line 275
    invoke-virtual {v3}, Llb/c0;->b()Ljava/util/UUID;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    if-eqz v3, :cond_e

    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    const-string v8, "sessionId.toString()"

    .line 286
    .line 287
    invoke-static {v3, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v8, "$session_id"

    .line 291
    .line 292
    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    if-nez p6, :cond_e

    .line 296
    .line 297
    if-eqz v2, :cond_e

    .line 298
    .line 299
    const-string v8, "$window_id"

    .line 300
    .line 301
    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    :cond_e
    if-eqz v1, :cond_f

    .line 305
    .line 306
    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 307
    .line 308
    .line 309
    :cond_f
    const-string v1, "distinct_id"

    .line 310
    .line 311
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    instance-of v8, v3, Ljava/lang/String;

    .line 316
    .line 317
    if-eqz v8, :cond_10

    .line 318
    .line 319
    move-object v5, v3

    .line 320
    check-cast v5, Ljava/lang/String;

    .line 321
    .line 322
    :cond_10
    if-nez p6, :cond_13

    .line 323
    .line 324
    if-eqz v2, :cond_13

    .line 325
    .line 326
    if-eqz v5, :cond_11

    .line 327
    .line 328
    invoke-static {v5}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_12

    .line 333
    .line 334
    :cond_11
    move v6, v7

    .line 335
    :cond_12
    if-eqz v6, :cond_13

    .line 336
    .line 337
    move-object v2, p1

    .line 338
    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_13
    return-object v4
.end method

.method private final z()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Leb/c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "anonymousId"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v1, v2, v4, v3, v4}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move-object v4, v1

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-static {v4}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 35
    :goto_1
    if-eqz v1, :cond_5

    .line 36
    .line 37
    sget-object v1, Lnb/a;->a:Lnb/a;

    .line 38
    .line 39
    invoke-virtual {v1}, Lnb/a;->c()Ljava/util/UUID;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Leb/c;->n:Leb/d;

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2}, Leb/d;->k()Lid/l;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v2, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_3
    check-cast v1, Ljava/util/UUID;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    const-string v1, ""

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v1, v4

    .line 69
    :goto_2
    invoke-direct {p0, v1}, Leb/c;->R(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_5
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    if-nez v4, :cond_6

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    :cond_6
    return-object v4

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0

    .line 82
    throw v1
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    sget-object v0, Llb/c0;->a:Llb/c0;

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/c0;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public V(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Leb/c;->J()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Leb/c;->n:Leb/d;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v0, "Could not start recording. Session replay is disabled, or remote config and feature flags are still being executed."

    .line 25
    .line 26
    invoke-interface {p1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Leb/c;->t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->isActive()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    if-eqz p1, :cond_4

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-interface {v0, p1}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->start(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p0}, Leb/c;->e()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Leb/c;->f()V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-interface {v0, p1}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->start(Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    iget-object p1, p0, Leb/c;->n:Leb/d;

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    const-string v0, "Could not start recording. Session replay isn\'t installed."

    .line 70
    .line 71
    invoke-interface {p1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_0
    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "version"

    .line 9
    .line 10
    const-string v1, "build"

    .line 11
    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lyc/m;->m([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Leb/c;->n:Leb/d;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Leb/d;->A()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v3, v2

    .line 34
    :goto_0
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const-string v1, "anonymousId"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-static {v0}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v1, v0}, Llb/m;->c(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Leb/c;->o:Llb/u;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Llb/u;->c()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Leb/c;->s:Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Leb/c;->j:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    iput-boolean v2, p0, Leb/c;->v:Z

    .line 70
    .line 71
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    iget-object v0, p0, Leb/c;->k:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v0

    .line 77
    :try_start_1
    iput-boolean v2, p0, Leb/c;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    invoke-virtual {p0}, Leb/c;->e()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Leb/c;->f()V

    .line 84
    .line 85
    .line 86
    iget-boolean v0, p0, Leb/c;->e:Z

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0}, Leb/d;->s()Leb/i;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v0, 0x0

    .line 100
    :goto_1
    invoke-virtual {p0, v0}, Leb/c;->u(Leb/i;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0

    .line 106
    throw v1

    .line 107
    :catchall_1
    move-exception v1

    .line 108
    monitor-exit v0

    .line 109
    throw v1
.end method

.method public close()V
    .locals 9

    .line 1
    iget-object v0, p0, Leb/c;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/16 v1, 0x2e

    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    iput-boolean v2, p0, Leb/c;->f:Z

    .line 16
    .line 17
    iget-object v2, p0, Leb/c;->n:Leb/d;

    .line 18
    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    sget-object v3, Leb/c;->D:Ljava/util/Set;

    .line 22
    .line 23
    invoke-virtual {v2}, Leb/d;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Leb/d;->m()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Leb/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    :try_start_2
    invoke-interface {v4}, Leb/g;->b()V

    .line 53
    .line 54
    .line 55
    instance-of v5, v4, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    iput-object v6, p0, Leb/c;->t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    instance-of v5, v4, Lmb/a;

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    iput-object v6, p0, Leb/c;->u:Lmb/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v5

    .line 71
    :try_start_3
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v8, "Integration "

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, " failed to uninstall: "

    .line 97
    .line 98
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v6, v4}, Llb/i;->a(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v2, p0, Leb/c;->p:Llb/q;

    .line 116
    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {v2}, Llb/q;->u()V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object v2, p0, Leb/c;->q:Llb/q;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v2}, Llb/q;->u()V

    .line 127
    .line 128
    .line 129
    :cond_5
    iget-object v2, p0, Leb/c;->s:Ljava/util/Map;

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Leb/c;->e()V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_1
    move-exception v2

    .line 141
    :try_start_4
    iget-object v3, p0, Leb/c;->n:Leb/d;

    .line 142
    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_6

    .line 150
    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v5, "Close failed: "

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v3, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 175
    .line 176
    :cond_6
    :goto_1
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :catchall_2
    move-exception v1

    .line 179
    monitor-exit v0

    .line 180
    throw v1
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Llb/c0;->a:Llb/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Llb/c0;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Llb/c0;->a:Llb/c0;

    .line 9
    .line 10
    invoke-virtual {v0}, Llb/c0;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Leb/c;->p:Llb/q;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Llb/q;->m()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Leb/c;->q:Llb/q;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Llb/q;->m()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Leb/c;->h:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Leb/c;->n:Leb/d;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Leb/d;->W(Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "opt-out"

    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1
.end method

.method public getConfig()Leb/d;
    .locals 2

    .line 1
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 2
    .line 3
    instance-of v1, v0, Leb/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object v0, Llb/c0;->a:Llb/c0;

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/c0;->b()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10

    .line 1
    const-string v0, "screenTitle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "$screen_name"

    .line 19
    .line 20
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-interface {v4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p1, Leb/f;->f:Leb/f;

    .line 29
    .line 30
    invoke-virtual {p1}, Leb/f;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/16 v8, 0x3a

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v1, p0

    .line 42
    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public j(Leb/d;)V
    .locals 11

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Leb/c;->g:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/16 v1, 0x2e

    .line 10
    .line 11
    :try_start_0
    iget-boolean v2, p0, Leb/c;->f:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "Setup called despite already being setup!"

    .line 20
    .line 21
    invoke-interface {v2, v3}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    instance-of v2, v2, Llb/l;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    new-instance v2, Llb/n;

    .line 35
    .line 36
    invoke-direct {v2, p1}, Llb/n;-><init>(Leb/d;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-virtual {p1, v2}, Leb/d;->S(Llb/i;)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Leb/c;->D:Ljava/util/Set;

    .line 48
    .line 49
    invoke-virtual {p1}, Leb/d;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "API Key: "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Leb/d;->b()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " already has a PostHog instance."

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, v3}, Llb/i;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p1}, Leb/d;->d()Llb/m;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    iget-object v2, p0, Leb/c;->r:Llb/j;

    .line 99
    .line 100
    :cond_3
    invoke-virtual {p1, v2}, Leb/d;->L(Llb/m;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Llb/c;

    .line 104
    .line 105
    invoke-direct {v2, p1}, Llb/c;-><init>(Leb/d;)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Llb/q;

    .line 109
    .line 110
    sget-object v6, Llb/d;->a:Llb/d;

    .line 111
    .line 112
    invoke-virtual {p1}, Leb/d;->H()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    iget-object v8, p0, Leb/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 117
    .line 118
    move-object v3, v9

    .line 119
    move-object v4, p1

    .line 120
    move-object v5, v2

    .line 121
    invoke-direct/range {v3 .. v8}, Llb/q;-><init>(Leb/d;Llb/c;Llb/d;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 122
    .line 123
    .line 124
    new-instance v10, Llb/q;

    .line 125
    .line 126
    sget-object v6, Llb/d;->b:Llb/d;

    .line 127
    .line 128
    invoke-virtual {p1}, Leb/d;->z()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-object v8, p0, Leb/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 133
    .line 134
    move-object v3, v10

    .line 135
    move-object v4, p1

    .line 136
    move-object v5, v2

    .line 137
    invoke-direct/range {v3 .. v8}, Llb/q;-><init>(Leb/d;Llb/c;Llb/d;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 138
    .line 139
    .line 140
    new-instance v3, Llb/u;

    .line 141
    .line 142
    iget-object v4, p0, Leb/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 143
    .line 144
    invoke-direct {v3, p1, v2, v4}, Llb/u;-><init>(Leb/d;Llb/c;Ljava/util/concurrent/ExecutorService;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v5, "opt-out"

    .line 152
    .line 153
    invoke-virtual {p1}, Leb/d;->t()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-interface {v4, v5, v6}, Llb/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 166
    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    check-cast v4, Ljava/lang/Boolean;

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    const/4 v4, 0x0

    .line 173
    :goto_1
    if-eqz v4, :cond_5

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {p1, v4}, Leb/d;->W(Z)V

    .line 183
    .line 184
    .line 185
    :cond_5
    invoke-virtual {p1}, Leb/d;->f()Llb/g;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-interface {v4}, Llb/g;->c()Ljava/util/Date;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    new-instance v5, Llb/x;

    .line 194
    .line 195
    iget-object v6, p0, Leb/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 196
    .line 197
    invoke-direct {v5, p1, v2, v4, v6}, Llb/x;-><init>(Leb/d;Llb/c;Ljava/util/Date;Ljava/util/concurrent/ExecutorService;)V

    .line 198
    .line 199
    .line 200
    iput-object p1, p0, Leb/c;->n:Leb/d;

    .line 201
    .line 202
    iput-object v9, p0, Leb/c;->p:Llb/q;

    .line 203
    .line 204
    iput-object v10, p0, Leb/c;->q:Llb/q;

    .line 205
    .line 206
    iput-object v3, p0, Leb/c;->o:Llb/u;

    .line 207
    .line 208
    new-instance v2, Leb/c$c;

    .line 209
    .line 210
    invoke-direct {v2, v3, p0, p1}, Leb/c$c;-><init>(Llb/u;Leb/c;Leb/d;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v2}, Llb/u;->C(Lid/a;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v5}, Leb/d;->a(Leb/g;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Leb/d;->E()Llb/b0;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-direct {p0, p1, v2}, Leb/c;->K(Leb/d;Llb/b0;)V

    .line 224
    .line 225
    .line 226
    const/4 v2, 0x1

    .line 227
    iput-boolean v2, p0, Leb/c;->f:Z

    .line 228
    .line 229
    invoke-virtual {v9}, Llb/q;->t()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Leb/c;->f()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Leb/d;->m()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Ljava/lang/Iterable;

    .line 240
    .line 241
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_a

    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Leb/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 256
    .line 257
    :try_start_2
    invoke-interface {v4, p0}, Leb/g;->c(Leb/h;)V

    .line 258
    .line 259
    .line 260
    instance-of v5, v4, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 261
    .line 262
    if-eqz v5, :cond_7

    .line 263
    .line 264
    move-object v5, v4

    .line 265
    check-cast v5, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 266
    .line 267
    iput-object v5, p0, Leb/c;->t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 268
    .line 269
    invoke-direct {p0}, Leb/c;->I()Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_6

    .line 274
    .line 275
    invoke-virtual {p0, v2}, Leb/c;->V(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_7
    instance-of v5, v4, Lmb/a;

    .line 280
    .line 281
    if-eqz v5, :cond_6

    .line 282
    .line 283
    move-object v5, v4

    .line 284
    check-cast v5, Lmb/a;

    .line 285
    .line 286
    iput-object v5, p0, Leb/c;->u:Lmb/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    .line 288
    :try_start_3
    iget-object v5, p0, Leb/c;->o:Llb/u;

    .line 289
    .line 290
    if-eqz v5, :cond_8

    .line 291
    .line 292
    invoke-virtual {v5}, Llb/u;->l()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    if-nez v5, :cond_9

    .line 297
    .line 298
    :cond_8
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    :cond_9
    move-object v6, v4

    .line 303
    check-cast v6, Lmb/a;

    .line 304
    .line 305
    invoke-interface {v6, v5}, Lmb/a;->d(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :catchall_0
    move-exception v5

    .line 310
    :try_start_4
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v8, "Pushing cached surveys to integration failed: "

    .line 320
    .line 321
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-interface {v6, v5}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :catchall_1
    move-exception v5

    .line 339
    :try_start_5
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v8, "Integration "

    .line 349
    .line 350
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v4, " failed to install: "

    .line 365
    .line 366
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-interface {v6, v4}, Llb/i;->a(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_2

    .line 383
    .line 384
    :cond_a
    iget-boolean v2, p0, Leb/c;->e:Z

    .line 385
    .line 386
    if-eqz v2, :cond_c

    .line 387
    .line 388
    invoke-virtual {p1}, Leb/d;->y()Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_b

    .line 393
    .line 394
    iget-object v2, p0, Leb/c;->x:Leb/i;

    .line 395
    .line 396
    invoke-virtual {p1}, Leb/d;->s()Leb/i;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-direct {p0, v2, v3}, Leb/c;->M(Leb/i;Leb/i;)V

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_b
    invoke-virtual {p1}, Leb/d;->v()Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_c

    .line 409
    .line 410
    invoke-virtual {p1}, Leb/d;->s()Leb/i;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {p0, v2}, Leb/c;->u(Leb/i;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 415
    .line 416
    .line 417
    goto :goto_3

    .line 418
    :catchall_2
    move-exception v2

    .line 419
    :try_start_6
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v4, "Setup failed: "

    .line 429
    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-interface {p1, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_c
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 447
    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 450
    :catchall_3
    move-exception p1

    .line 451
    monitor-exit v0

    .line 452
    throw p1
.end method

.method public k(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Leb/c;->n:Leb/d;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, p1}, Leb/d;->O(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Leb/c;->h:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Leb/c;->n:Leb/d;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Leb/d;->W(Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "opt-out"

    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1
.end method

.method public m(Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "alias"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {p0, v0, v3, v1, v2}, Leb/c;->P(Leb/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object p1, Leb/f;->h:Leb/f;

    .line 32
    .line 33
    invoke-virtual {p1}, Leb/f;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/16 v9, 0x3a

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    move-object v2, p0

    .line 45
    invoke-static/range {v2 .. v10}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p1

    .line 3
    const-string v1, "event"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v10, 0x2e

    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0}, Leb/c;->E()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v9, Leb/c;->n:Leb/d;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Leb/d;->t()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    move v1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v3

    .line 32
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v0, v9, Leb/c;->n:Leb/d;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const-string v1, "PostHog is in OptOut state."

    .line 45
    .line 46
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    invoke-direct {p0}, Leb/c;->A()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v11, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move-object v11, p2

    .line 59
    :goto_1
    if-eqz p4, :cond_5

    .line 60
    .line 61
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    move v1, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_5
    move v1, v3

    .line 70
    :goto_2
    if-nez v1, :cond_8

    .line 71
    .line 72
    if-eqz p5, :cond_6

    .line 73
    .line 74
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    move v1, v3

    .line 83
    :goto_3
    if-nez v1, :cond_8

    .line 84
    .line 85
    if-eqz p6, :cond_7

    .line 86
    .line 87
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_7

    .line 92
    .line 93
    move v1, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_7
    move v1, v3

    .line 96
    :goto_4
    if-eqz v1, :cond_9

    .line 97
    .line 98
    :cond_8
    const-string v1, "capture"

    .line 99
    .line 100
    invoke-direct {p0, v1, v2}, Leb/c;->O(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    :cond_9
    invoke-static {v11}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    iget-object v0, v9, Leb/c;->n:Leb/d;

    .line 110
    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v2, "capture call not allowed, distinctId is invalid: "

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    return-void

    .line 143
    :cond_b
    sget-object v12, Leb/f;->c:Leb/f;

    .line 144
    .line 145
    invoke-virtual {v12}, Leb/f;->b()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    sget-object v4, Leb/f;->g:Leb/f;

    .line 154
    .line 155
    invoke-virtual {v4}, Leb/f;->b()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {p1, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    xor-int/lit8 v7, v1, 0x1

    .line 164
    .line 165
    if-nez v4, :cond_c

    .line 166
    .line 167
    move v8, v2

    .line 168
    goto :goto_5

    .line 169
    :cond_c
    move v8, v3

    .line 170
    :goto_5
    move-object v1, p0

    .line 171
    move-object v2, v11

    .line 172
    move-object/from16 v3, p3

    .line 173
    .line 174
    move-object/from16 v4, p4

    .line 175
    .line 176
    move-object/from16 v5, p5

    .line 177
    .line 178
    move-object/from16 v6, p6

    .line 179
    .line 180
    invoke-direct/range {v1 .. v8}, Leb/c;->y(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZ)Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-direct {p0, p1, v11, v1}, Leb/c;->x(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/PostHogEvent;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_f

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v2, "PostHog event "

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v2, " was dropped"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    sget-object v2, Leb/f;->b:Leb/f$a;

    .line 213
    .line 214
    invoke-virtual {v2, p1}, Leb/f$a;->a(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_d

    .line 219
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ". This can cause unexpected behavior."

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_d
    iget-object v0, v9, Leb/c;->n:Leb/d;

    .line 238
    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_e

    .line 246
    .line 247
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_e
    return-void

    .line 251
    :cond_f
    invoke-virtual {v1}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v12}, Leb/f;->b()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_12

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/posthog/PostHogEvent;->getProperties()Ljava/util/Map;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    if-eqz v3, :cond_10

    .line 270
    .line 271
    const-string v4, "$session_id"

    .line 272
    .line 273
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    goto :goto_6

    .line 278
    :cond_10
    const/4 v3, 0x0

    .line 279
    :goto_6
    if-nez v3, :cond_12

    .line 280
    .line 281
    iget-object v0, v9, Leb/c;->n:Leb/d;

    .line 282
    .line 283
    if-eqz v0, :cond_11

    .line 284
    .line 285
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v1, " event dropped, because the $session_id property is missing"

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-interface {v0, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_11
    return-void

    .line 316
    :cond_12
    if-eqz v2, :cond_13

    .line 317
    .line 318
    iget-object v0, v9, Leb/c;->q:Llb/q;

    .line 319
    .line 320
    if-eqz v0, :cond_15

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Llb/q;->e(Lcom/posthog/PostHogEvent;)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_13
    iget-object v2, v9, Leb/c;->p:Llb/q;

    .line 327
    .line 328
    if-eqz v2, :cond_14

    .line 329
    .line 330
    invoke-virtual {v2, v1}, Llb/q;->e(Lcom/posthog/PostHogEvent;)V

    .line 331
    .line 332
    .line 333
    :cond_14
    iget-object v1, v9, Leb/c;->u:Lmb/a;

    .line 334
    .line 335
    if-eqz v1, :cond_15

    .line 336
    .line 337
    invoke-interface {v1, p1}, Lmb/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    iget-object v1, v9, Leb/c;->n:Leb/d;

    .line 343
    .line 344
    if-eqz v1, :cond_15

    .line 345
    .line 346
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    if-eqz v1, :cond_15

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v3, "Capture failed: "

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_15
    :goto_7
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    iget-object v0, p0, Leb/c;->o:Llb/u;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Llb/u;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p2, v0

    .line 25
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Leb/c;->Q(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object p2
.end method

.method public p()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Leb/c;->t:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->isActive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Leb/c;->H()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_2
    return v1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-direct {p0}, Leb/c;->A()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public r(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1, p2}, Leb/c;->o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    instance-of p2, p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    check-cast p1, Ljava/lang/CharSequence;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_1
    return v0
.end method

.method public s(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "distinctId"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p0}, Leb/c;->E()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v1, "identify"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    invoke-static {v10, v1, v11, v2, v12}, Leb/c;->P(Leb/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v13, 0x2e

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v10, Leb/c;->n:Leb/d;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "identify call not allowed, distinctId is invalid: "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    invoke-direct/range {p0 .. p0}, Leb/c;->A()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v1, v10, Leb/c;->n:Leb/d;

    .line 81
    .line 82
    const/4 v15, 0x1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Leb/d;->A()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-ne v1, v15, :cond_4

    .line 90
    .line 91
    move v1, v15

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    move v1, v11

    .line 94
    :goto_0
    if-nez v1, :cond_6

    .line 95
    .line 96
    invoke-direct/range {p0 .. p0}, Leb/c;->z()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    xor-int/2addr v2, v15

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    const-string v2, "$anon_distinct_id"

    .line 108
    .line 109
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v2, v10, Leb/c;->n:Leb/d;

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v5, "identify called with invalid anonymousId: "

    .line 129
    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v2, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_1
    invoke-static {v14, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    xor-int/2addr v1, v15

    .line 151
    if-eqz v1, :cond_b

    .line 152
    .line 153
    invoke-direct/range {p0 .. p0}, Leb/c;->F()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_b

    .line 158
    .line 159
    iget-object v1, v10, Leb/c;->j:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v1

    .line 162
    :try_start_0
    invoke-direct {v10, v15}, Leb/c;->T(Z)V

    .line 163
    .line 164
    .line 165
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    monitor-exit v1

    .line 168
    sget-object v1, Leb/f;->e:Leb/f;

    .line 169
    .line 170
    invoke-virtual {v1}, Leb/f;->b()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v7, 0x0

    .line 175
    const/16 v8, 0x20

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    move-object/from16 v1, p0

    .line 179
    .line 180
    move-object/from16 v3, p1

    .line 181
    .line 182
    move-object/from16 v5, p2

    .line 183
    .line 184
    move-object/from16 v6, p3

    .line 185
    .line 186
    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v10, Leb/c;->n:Leb/d;

    .line 190
    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    invoke-virtual {v1}, Leb/d;->A()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-ne v1, v15, :cond_7

    .line 198
    .line 199
    move v11, v15

    .line 200
    :cond_7
    if-nez v11, :cond_9

    .line 201
    .line 202
    invoke-static {v14}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    xor-int/2addr v1, v15

    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    invoke-direct {v10, v14}, Leb/c;->R(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_8
    iget-object v1, v10, Leb/c;->n:Leb/d;

    .line 214
    .line 215
    if-eqz v1, :cond_9

    .line 216
    .line 217
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_9

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v3, "identify called with invalid former distinctId: "

    .line 229
    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-interface {v1, v2}, Llb/i;->a(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p1}, Leb/c;->S(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-boolean v0, v10, Leb/c;->e:Z

    .line 250
    .line 251
    if-eqz v0, :cond_10

    .line 252
    .line 253
    iget-object v0, v10, Leb/c;->n:Leb/d;

    .line 254
    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    invoke-virtual {v0}, Leb/d;->s()Leb/i;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    :cond_a
    invoke-virtual {v10, v12}, Leb/c;->u(Leb/i;)V

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    monitor-exit v1

    .line 267
    throw v0

    .line 268
    :cond_b
    if-nez v1, :cond_f

    .line 269
    .line 270
    if-eqz p2, :cond_c

    .line 271
    .line 272
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    xor-int/2addr v1, v15

    .line 277
    if-ne v1, v15, :cond_c

    .line 278
    .line 279
    move v1, v15

    .line 280
    goto :goto_3

    .line 281
    :cond_c
    move v1, v11

    .line 282
    :goto_3
    if-nez v1, :cond_e

    .line 283
    .line 284
    if-eqz p3, :cond_d

    .line 285
    .line 286
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    xor-int/2addr v1, v15

    .line 291
    if-ne v1, v15, :cond_d

    .line 292
    .line 293
    move v11, v15

    .line 294
    :cond_d
    if-eqz v11, :cond_f

    .line 295
    .line 296
    :cond_e
    const-string v2, "$set"

    .line 297
    .line 298
    const/4 v4, 0x0

    .line 299
    const/4 v7, 0x0

    .line 300
    const/16 v8, 0x24

    .line 301
    .line 302
    const/4 v9, 0x0

    .line 303
    move-object/from16 v1, p0

    .line 304
    .line 305
    move-object/from16 v3, p1

    .line 306
    .line 307
    move-object/from16 v5, p2

    .line 308
    .line 309
    move-object/from16 v6, p3

    .line 310
    .line 311
    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_f
    iget-object v1, v10, Leb/c;->n:Leb/d;

    .line 316
    .line 317
    if-eqz v1, :cond_10

    .line 318
    .line 319
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz v1, :cond_10

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v3, "already identified with id: "

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_10
    :goto_4
    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Leb/c;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    iget-object v0, p0, Leb/c;->o:Llb/u;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Llb/u;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p2, p1

    .line 25
    :cond_2
    :goto_0
    return-object p2
.end method

.method public u(Leb/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Leb/c;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Leb/c;->x:Leb/i;

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Leb/c;->L(Leb/i;Leb/i;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Leb/c;->E()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Llb/m;->a:Llb/m$a;

    .line 19
    .line 20
    invoke-virtual {v0}, Llb/m$a;->a()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object p2, p0, Leb/c;->n:Leb/d;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "Key: "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " is reserved for internal use."

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0, p1, p2}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 13

    .line 1
    move-object v10, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    const-string v3, "type"

    .line 7
    .line 8
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v3, "key"

    .line 12
    .line 13
    invoke-static {p2, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Leb/c;->E()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v3, "group"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v11, 0x0

    .line 28
    invoke-static {p0, v3, v4, v5, v11}, Leb/c;->P(Leb/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v3, "$group_type"

    .line 41
    .line 42
    invoke-interface {v6, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v3, "$group_key"

    .line 46
    .line 47
    invoke-interface {v6, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const-string v3, "$group_set"

    .line 53
    .line 54
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-direct {p0}, Leb/c;->B()Llb/m;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, v10, Leb/c;->l:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v3

    .line 64
    :try_start_0
    const-string v7, "groups"

    .line 65
    .line 66
    invoke-static {v2, v7, v11, v5, v11}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    instance-of v7, v5, Ljava/util/Map;

    .line 71
    .line 72
    if-eqz v7, :cond_3

    .line 73
    .line 74
    check-cast v5, Ljava/util/Map;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object v5, v11

    .line 78
    :goto_0
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p2, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    xor-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    move v12, v4

    .line 101
    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v0, "groups"

    .line 105
    .line 106
    invoke-interface {v2, v0, v7}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    monitor-exit v3

    .line 112
    sget-object v0, Leb/f;->g:Leb/f;

    .line 113
    .line 114
    invoke-virtual {v0}, Leb/f;->b()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const/4 v3, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    const/4 v7, 0x0

    .line 122
    const/16 v8, 0x3a

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    move-object v1, p0

    .line 126
    move-object v4, v6

    .line 127
    move-object v6, v0

    .line 128
    invoke-static/range {v1 .. v9}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v0, v10, Leb/c;->e:Z

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    if-eqz v12, :cond_6

    .line 136
    .line 137
    iget-object v0, v10, Leb/c;->n:Leb/d;

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Leb/d;->s()Leb/i;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    :cond_5
    invoke-virtual {p0, v11}, Leb/c;->u(Leb/i;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    return-void

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    monitor-exit v3

    .line 151
    throw v0
.end method
