.class public final Lio/sentry/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/u0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/d3$b;,
        Lio/sentry/d3$d;,
        Lio/sentry/d3$c;,
        Lio/sentry/d3$a;
    }
.end annotation


# instance fields
.field private a:Lio/sentry/j5;

.field private b:Lio/sentry/a1;

.field private c:Ljava/lang/String;

.field private d:Lio/sentry/protocol/b0;

.field private e:Ljava/lang/String;

.field private f:Lio/sentry/protocol/m;

.field private g:Ljava/util/List;

.field private final h:Ljava/util/Queue;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;

.field private k:Ljava/util/List;

.field private final l:Lio/sentry/s5;

.field private volatile m:Lio/sentry/f6;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/lang/Object;

.field private q:Lio/sentry/protocol/c;

.field private r:Ljava/util/List;

.field private s:Lio/sentry/w2;

.field private t:Lio/sentry/protocol/r;


# direct methods
.method private constructor <init>(Lio/sentry/d3;)V
    .locals 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->g:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->k:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->n:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->o:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->p:Ljava/lang/Object;

    .line 23
    new-instance v0, Lio/sentry/protocol/c;

    invoke-direct {v0}, Lio/sentry/protocol/c;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->r:Ljava/util/List;

    .line 25
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    iput-object v0, p0, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    .line 26
    iget-object v0, p1, Lio/sentry/d3;->b:Lio/sentry/a1;

    iput-object v0, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 27
    iget-object v0, p1, Lio/sentry/d3;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/d3;->c:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lio/sentry/d3;->m:Lio/sentry/f6;

    iput-object v0, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 29
    iget-object v0, p1, Lio/sentry/d3;->l:Lio/sentry/s5;

    iput-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 30
    iget-object v0, p1, Lio/sentry/d3;->a:Lio/sentry/j5;

    iput-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/j5;

    .line 31
    iget-object v0, p1, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    new-instance v2, Lio/sentry/protocol/b0;

    invoke-direct {v2, v0}, Lio/sentry/protocol/b0;-><init>(Lio/sentry/protocol/b0;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    .line 33
    iget-object v0, p1, Lio/sentry/d3;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/d3;->e:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    iput-object v0, p0, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    .line 35
    iget-object v0, p1, Lio/sentry/d3;->f:Lio/sentry/protocol/m;

    if-eqz v0, :cond_1

    .line 36
    new-instance v1, Lio/sentry/protocol/m;

    invoke-direct {v1, v0}, Lio/sentry/protocol/m;-><init>(Lio/sentry/protocol/m;)V

    :cond_1
    iput-object v1, p0, Lio/sentry/d3;->f:Lio/sentry/protocol/m;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/sentry/d3;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/d3;->g:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/d3;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/d3;->k:Ljava/util/List;

    .line 39
    iget-object v0, p1, Lio/sentry/d3;->h:Ljava/util/Queue;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/sentry/e;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/e;

    .line 40
    iget-object v2, p1, Lio/sentry/d3;->l:Lio/sentry/s5;

    invoke-virtual {v2}, Lio/sentry/s5;->getMaxBreadcrumbs()I

    move-result v2

    invoke-direct {p0, v2}, Lio/sentry/d3;->M(I)Ljava/util/Queue;

    move-result-object v2

    .line 41
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 42
    new-instance v5, Lio/sentry/e;

    invoke-direct {v5, v4}, Lio/sentry/e;-><init>(Lio/sentry/e;)V

    .line 43
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    :cond_2
    iput-object v2, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 45
    iget-object v0, p1, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 49
    :cond_4
    iput-object v1, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 50
    iget-object v0, p1, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 54
    :cond_6
    iput-object v1, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 55
    new-instance v0, Lio/sentry/protocol/c;

    iget-object v1, p1, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    invoke-direct {v0, v1}, Lio/sentry/protocol/c;-><init>(Lio/sentry/protocol/c;)V

    iput-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/d3;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/d3;->r:Ljava/util/List;

    .line 57
    new-instance v0, Lio/sentry/w2;

    iget-object p1, p1, Lio/sentry/d3;->s:Lio/sentry/w2;

    invoke-direct {v0, p1}, Lio/sentry/w2;-><init>(Lio/sentry/w2;)V

    iput-object v0, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->k:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->n:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->o:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->p:Ljava/lang/Object;

    .line 9
    new-instance v0, Lio/sentry/protocol/c;

    invoke-direct {v0}, Lio/sentry/protocol/c;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/d3;->r:Ljava/util/List;

    .line 11
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    iput-object v0, p0, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    const-string v0, "SentryOptions is required."

    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/s5;

    iput-object p1, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 13
    invoke-virtual {p1}, Lio/sentry/s5;->getMaxBreadcrumbs()I

    move-result p1

    invoke-direct {p0, p1}, Lio/sentry/d3;->M(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 14
    new-instance p1, Lio/sentry/w2;

    invoke-direct {p1}, Lio/sentry/w2;-><init>()V

    iput-object p1, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    return-void
.end method

.method private M(I)Ljava/util/Queue;
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lio/sentry/f;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lio/sentry/f;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lio/sentry/t6;->i(Ljava/util/Queue;)Lio/sentry/t6;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lio/sentry/q;

    .line 14
    .line 15
    invoke-direct {p1}, Lio/sentry/q;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lio/sentry/t6;->i(Ljava/util/Queue;)Lio/sentry/t6;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 3
    .line 4
    return-void
.end method

.method public B(Lio/sentry/d3$a;)Lio/sentry/w2;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    .line 5
    .line 6
    invoke-interface {p1, v1}, Lio/sentry/d3$a;->a(Lio/sentry/w2;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lio/sentry/w2;

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Lio/sentry/w2;-><init>(Lio/sentry/w2;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D(Lio/sentry/d3$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 5
    .line 6
    invoke-interface {p1, v1}, Lio/sentry/d3$c;->a(Lio/sentry/a1;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public E(Lio/sentry/a1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

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
    check-cast v2, Lio/sentry/v0;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v2, v3}, Lio/sentry/v0;->j(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v2, v3, p0}, Lio/sentry/v0;->h(Lio/sentry/l6;Lio/sentry/u0;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    invoke-interface {v2, v3}, Lio/sentry/v0;->j(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3, p0}, Lio/sentry/v0;->h(Lio/sentry/l6;Lio/sentry/u0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public F()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Lio/sentry/protocol/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lio/sentry/protocol/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->f:Lio/sentry/protocol/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/d3;->c:Ljava/lang/String;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public K(Lio/sentry/w2;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/w2;->h()Lio/sentry/l6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lio/sentry/v0;

    .line 28
    .line 29
    invoke-interface {v1, p1, p0}, Lio/sentry/v0;->h(Lio/sentry/l6;Lio/sentry/u0;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/sentry/v0;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lio/sentry/v0;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lio/sentry/v0;->setExtras(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/sentry/v0;

    .line 27
    .line 28
    invoke-interface {v1, p1, p2}, Lio/sentry/v0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lio/sentry/v0;->setExtras(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/sentry/v0;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lio/sentry/v0;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lio/sentry/v0;->e(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/j5;

    .line 3
    .line 4
    iput-object v0, p0, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    .line 5
    .line 6
    iput-object v0, p0, Lio/sentry/d3;->f:Lio/sentry/protocol/m;

    .line 7
    .line 8
    iput-object v0, p0, Lio/sentry/d3;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/d3;->g:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lio/sentry/d3;->q()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/d3;->k:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lio/sentry/d3;->h()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lio/sentry/d3;->L()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/d3;->r()Lio/sentry/u0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/sentry/v0;

    .line 27
    .line 28
    invoke-interface {v1, p1, p2}, Lio/sentry/v0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Lio/sentry/v0;->e(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public e()Lio/sentry/f6;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/f6;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/sentry/f6;->b()Lio/sentry/f6;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v2, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-object v2

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public f()Lio/sentry/d3$d;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/sentry/f6;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 14
    .line 15
    iget-object v2, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {v2}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    new-instance v2, Lio/sentry/f6;

    .line 25
    .line 26
    iget-object v4, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {v4}, Lio/sentry/s5;->getDistinctId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    .line 33
    .line 34
    iget-object v6, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 35
    .line 36
    invoke-virtual {v6}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v7, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 41
    .line 42
    invoke-virtual {v7}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-direct {v2, v4, v5, v6, v7}, Lio/sentry/f6;-><init>(Ljava/lang/String;Lio/sentry/protocol/b0;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Lio/sentry/f6;->b()Lio/sentry/f6;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    new-instance v1, Lio/sentry/d3$d;

    .line 58
    .line 59
    iget-object v2, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 60
    .line 61
    invoke-virtual {v2}, Lio/sentry/f6;->b()Lio/sentry/f6;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2, v3}, Lio/sentry/d3$d;-><init>(Lio/sentry/f6;Lio/sentry/f6;)V

    .line 66
    .line 67
    .line 68
    move-object v3, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 71
    .line 72
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 77
    .line 78
    const-string v4, "Release is not set on SentryOptions. Session could not be started"

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    new-array v5, v5, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-interface {v1, v2, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    monitor-exit v0

    .line 87
    return-object v3

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw v1
.end method

.method public g(Lio/sentry/protocol/r;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lio/sentry/v0;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lio/sentry/v0;->g(Lio/sentry/protocol/r;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->j:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 6
    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-object v1, p0, Lio/sentry/d3;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lio/sentry/v0;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Lio/sentry/v0;->j(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v1, p0}, Lio/sentry/v0;->h(Lio/sentry/l6;Lio/sentry/u0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v1
.end method

.method public i()Lio/sentry/z0;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/a1;->k()Lio/sentry/k6;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lio/sentry/f6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/Queue;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lio/sentry/j5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->a:Lio/sentry/j5;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lio/sentry/protocol/b0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/sentry/d3;->d:Lio/sentry/protocol/b0;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lio/sentry/v0;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lio/sentry/v0;->n(Lio/sentry/protocol/b0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public o()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->t:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public p(Lio/sentry/e;Lio/sentry/c0;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    new-instance p2, Lio/sentry/c0;

    .line 7
    .line 8
    invoke-direct {p2}, Lio/sentry/c0;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-object p2, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 12
    .line 13
    invoke-virtual {p2}, Lio/sentry/s5;->getBeforeBreadcrumb()Lio/sentry/s5$a;

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 22
    .line 23
    invoke-virtual {p2}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lio/sentry/v0;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lio/sentry/v0;->t(Lio/sentry/e;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lio/sentry/v0;->f(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lio/sentry/v0;

    .line 27
    .line 28
    iget-object v2, p0, Lio/sentry/d3;->h:Ljava/util/Queue;

    .line 29
    .line 30
    invoke-interface {v1, v2}, Lio/sentry/v0;->f(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public r()Lio/sentry/u0;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/d3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/d3;-><init>(Lio/sentry/d3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public s()Lio/sentry/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->b:Lio/sentry/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lio/sentry/w2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->s:Lio/sentry/w2;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Lio/sentry/d3$b;)Lio/sentry/f6;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 5
    .line 6
    invoke-interface {p1, v1}, Lio/sentry/d3$b;->a(Lio/sentry/f6;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/sentry/d3;->m:Lio/sentry/f6;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/sentry/f6;->b()Lio/sentry/f6;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public v(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lio/sentry/d3;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/d3;->y()Lio/sentry/protocol/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/protocol/c;->a()Lio/sentry/protocol/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lio/sentry/protocol/a;

    .line 14
    .line 15
    invoke-direct {v1}, Lio/sentry/protocol/a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/sentry/protocol/c;->g(Lio/sentry/protocol/a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, p1}, Lio/sentry/protocol/a;->u(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lio/sentry/protocol/a;->u(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p1, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lio/sentry/v0;

    .line 61
    .line 62
    invoke-interface {v1, v0}, Lio/sentry/v0;->i(Lio/sentry/protocol/c;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    return-void
.end method

.method public w()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->i:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/d3;->r:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public y()Lio/sentry/protocol/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public z(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/d3;->l:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/sentry/s5;->getScopeObservers()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lio/sentry/v0;

    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/d3;->q:Lio/sentry/protocol/c;

    .line 29
    .line 30
    invoke-interface {p2, v0}, Lio/sentry/v0;->i(Lio/sentry/protocol/c;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
