.class public final Lio/sentry/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/z0;


# instance fields
.field private a:Lio/sentry/y3;

.field private b:Lio/sentry/y3;

.field private final c:Lio/sentry/l6;

.field private final d:Lio/sentry/d6;

.field private e:Ljava/lang/Throwable;

.field private final f:Lio/sentry/o0;

.field private g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Lio/sentry/o6;

.field private j:Lio/sentry/m6;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Lio/sentry/util/m;


# direct methods
.method constructor <init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/d6;Ljava/lang/String;Lio/sentry/o0;Lio/sentry/y3;Lio/sentry/o6;Lio/sentry/m6;)V
    .locals 10

    move-object v0, p0

    move-object/from16 v1, p6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lio/sentry/k6;->g:Z

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, v0, Lio/sentry/k6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lio/sentry/k6;->k:Ljava/util/Map;

    .line 5
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lio/sentry/k6;->l:Ljava/util/Map;

    .line 6
    new-instance v2, Lio/sentry/util/m;

    new-instance v3, Lio/sentry/j6;

    invoke-direct {v3}, Lio/sentry/j6;-><init>()V

    invoke-direct {v2, v3}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v2, v0, Lio/sentry/k6;->m:Lio/sentry/util/m;

    .line 7
    new-instance v2, Lio/sentry/l6;

    new-instance v6, Lio/sentry/n6;

    invoke-direct {v6}, Lio/sentry/n6;-><init>()V

    .line 8
    invoke-virtual {p3}, Lio/sentry/d6;->L()Lio/sentry/x6;

    move-result-object v9

    move-object v4, v2

    move-object v5, p1

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lio/sentry/l6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Ljava/lang/String;Lio/sentry/n6;Lio/sentry/x6;)V

    iput-object v2, v0, Lio/sentry/k6;->c:Lio/sentry/l6;

    const-string v2, "transaction is required"

    move-object v3, p3

    .line 9
    invoke-static {p3, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/d6;

    iput-object v2, v0, Lio/sentry/k6;->d:Lio/sentry/d6;

    const-string v2, "hub is required"

    move-object v3, p5

    .line 10
    invoke-static {p5, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/o0;

    iput-object v2, v0, Lio/sentry/k6;->f:Lio/sentry/o0;

    move-object/from16 v2, p7

    .line 11
    iput-object v2, v0, Lio/sentry/k6;->i:Lio/sentry/o6;

    move-object/from16 v2, p8

    .line 12
    iput-object v2, v0, Lio/sentry/k6;->j:Lio/sentry/m6;

    if-eqz v1, :cond_0

    .line 13
    iput-object v1, v0, Lio/sentry/k6;->a:Lio/sentry/y3;

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p5}, Lio/sentry/o0;->B()Lio/sentry/s5;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/k6;->a:Lio/sentry/y3;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lio/sentry/y6;Lio/sentry/d6;Lio/sentry/o0;Lio/sentry/y3;Lio/sentry/o6;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lio/sentry/k6;->g:Z

    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/k6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/k6;->k:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/k6;->l:Ljava/util/Map;

    .line 20
    new-instance v0, Lio/sentry/util/m;

    new-instance v1, Lio/sentry/j6;

    invoke-direct {v1}, Lio/sentry/j6;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    iput-object v0, p0, Lio/sentry/k6;->m:Lio/sentry/util/m;

    const-string v0, "context is required"

    .line 21
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/l6;

    iput-object p1, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    const-string p1, "sentryTracer is required"

    .line 22
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/d6;

    iput-object p1, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    const-string p1, "hub is required"

    .line 23
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/sentry/k6;->j:Lio/sentry/m6;

    if-eqz p4, :cond_0

    .line 25
    iput-object p4, p0, Lio/sentry/k6;->a:Lio/sentry/y3;

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p3}, Lio/sentry/o0;->B()Lio/sentry/s5;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/k6;->a:Lio/sentry/y3;

    .line 27
    :goto_0
    iput-object p5, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    return-void
.end method

.method private static synthetic J()Lio/sentry/metrics/c;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/metrics/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/metrics/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private M(Lio/sentry/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/k6;->a:Lio/sentry/y3;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic u()Lio/sentry/metrics/c;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/k6;->J()Lio/sentry/metrics/c;

    move-result-object v0

    return-object v0
.end method

.method private w()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/d6;->M()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lio/sentry/k6;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/sentry/k6;->B()Lio/sentry/n6;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Lio/sentry/k6;->B()Lio/sentry/n6;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0}, Lio/sentry/k6;->E()Lio/sentry/n6;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Lio/sentry/n6;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method


# virtual methods
.method A()Lio/sentry/o6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->d()Lio/sentry/n6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public C()Lio/sentry/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->g()Lio/sentry/x6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method D()Lio/sentry/m6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->j:Lio/sentry/m6;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->h()Lio/sentry/n6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public F()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->j()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public G()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->e()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public I()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->f()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method K(Lio/sentry/m6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/k6;->j:Lio/sentry/m6;

    .line 2
    .line 3
    return-void
.end method

.method public L(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/sentry/k6;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 13
    .line 14
    invoke-virtual {v1}, Lio/sentry/l6;->h()Lio/sentry/n6;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p3

    .line 21
    move-object v5, p4

    .line 22
    move-object v6, p5

    .line 23
    invoke-virtual/range {v0 .. v6}, Lio/sentry/d6;->a0(Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->k:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/k6;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Lio/sentry/p6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->i()Lio/sentry/p6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f(Lio/sentry/y3;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->b:Lio/sentry/y3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lio/sentry/k6;->b:Lio/sentry/y3;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public g(Lio/sentry/p6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lio/sentry/k6;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->i()Lio/sentry/p6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lio/sentry/k6;->g(Lio/sentry/p6;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/k6;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    .line 8
    .line 9
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 18
    .line 19
    const-string v0, "The span is already finished. Measurement %s cannot be set"

    .line 20
    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, p3, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lio/sentry/k6;->l:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v1, Lio/sentry/protocol/h;

    .line 32
    .line 33
    invoke-interface {p3}, Lio/sentry/t1;->apiName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, p2, v2}, Lio/sentry/protocol/h;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 44
    .line 45
    invoke-virtual {v0}, Lio/sentry/d6;->K()Lio/sentry/k6;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eq v0, p0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 52
    .line 53
    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/d6;->Z(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/l6;->l(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o()Lio/sentry/l6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->b:Lio/sentry/y3;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/k6;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    .line 8
    .line 9
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 18
    .line 19
    const-string v1, "The span is already finished. Measurement %s cannot be set"

    .line 20
    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lio/sentry/k6;->l:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v1, Lio/sentry/protocol/h;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, p2, v2}, Lio/sentry/protocol/h;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/sentry/d6;->K()Lio/sentry/k6;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eq v0, p0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Lio/sentry/d6;->Y(Ljava/lang/String;Ljava/lang/Number;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public r(Lio/sentry/p6;Lio/sentry/y3;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/sentry/k6;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/k6;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lio/sentry/l6;->o(Lio/sentry/p6;)V

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    .line 25
    .line 26
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_1
    iput-object p2, p0, Lio/sentry/k6;->b:Lio/sentry/y3;

    .line 39
    .line 40
    iget-object p1, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/o6;->c()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    .line 49
    .line 50
    invoke-virtual {p1}, Lio/sentry/o6;->b()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_b

    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/sentry/d6;->K()Lio/sentry/k6;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/sentry/k6;->E()Lio/sentry/n6;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lio/sentry/k6;->E()Lio/sentry/n6;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lio/sentry/n6;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 77
    .line 78
    invoke-virtual {p1}, Lio/sentry/d6;->G()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0}, Lio/sentry/k6;->w()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 p2, 0x0

    .line 92
    move-object v0, p2

    .line 93
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lio/sentry/k6;

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Lio/sentry/k6;->t()Lio/sentry/y3;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, p2}, Lio/sentry/y3;->i(Lio/sentry/y3;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    :cond_5
    invoke-virtual {v1}, Lio/sentry/k6;->t()Lio/sentry/y3;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :cond_6
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    invoke-virtual {v1}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3, v0}, Lio/sentry/y3;->f(Lio/sentry/y3;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_4

    .line 138
    .line 139
    :cond_7
    invoke-virtual {v1}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_1

    .line 144
    :cond_8
    iget-object p1, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    .line 145
    .line 146
    invoke-virtual {p1}, Lio/sentry/o6;->c()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    if-eqz p2, :cond_9

    .line 153
    .line 154
    iget-object p1, p0, Lio/sentry/k6;->a:Lio/sentry/y3;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Lio/sentry/y3;->i(Lio/sentry/y3;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_9

    .line 161
    .line 162
    invoke-direct {p0, p2}, Lio/sentry/k6;->M(Lio/sentry/y3;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-object p1, p0, Lio/sentry/k6;->i:Lio/sentry/o6;

    .line 166
    .line 167
    invoke-virtual {p1}, Lio/sentry/o6;->b()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_b

    .line 172
    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    iget-object p1, p0, Lio/sentry/k6;->b:Lio/sentry/y3;

    .line 176
    .line 177
    if-eqz p1, :cond_a

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lio/sentry/y3;->f(Lio/sentry/y3;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_b

    .line 184
    .line 185
    :cond_a
    invoke-virtual {p0, v0}, Lio/sentry/k6;->f(Lio/sentry/y3;)Z

    .line 186
    .line 187
    .line 188
    :cond_b
    iget-object p1, p0, Lio/sentry/k6;->e:Ljava/lang/Throwable;

    .line 189
    .line 190
    if-eqz p1, :cond_c

    .line 191
    .line 192
    iget-object p2, p0, Lio/sentry/k6;->f:Lio/sentry/o0;

    .line 193
    .line 194
    iget-object v0, p0, Lio/sentry/k6;->d:Lio/sentry/d6;

    .line 195
    .line 196
    invoke-virtual {v0}, Lio/sentry/d6;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {p2, p1, p0, v0}, Lio/sentry/o0;->A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_c
    iget-object p1, p0, Lio/sentry/k6;->j:Lio/sentry/m6;

    .line 204
    .line 205
    if-eqz p1, :cond_d

    .line 206
    .line 207
    invoke-interface {p1, p0}, Lio/sentry/m6;->a(Lio/sentry/k6;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    iput-boolean v2, p0, Lio/sentry/k6;->g:Z

    .line 211
    .line 212
    :cond_e
    :goto_2
    return-void
.end method

.method public t()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->a:Lio/sentry/y3;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->k:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lio/sentry/metrics/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->m:Lio/sentry/util/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/metrics/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public y()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/k6;->c:Lio/sentry/l6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/l6;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
