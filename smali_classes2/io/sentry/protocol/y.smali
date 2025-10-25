.class public final Lio/sentry/protocol/y;
.super Lio/sentry/t3;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/y$a;
    }
.end annotation


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Double;

.field private r:Ljava/lang/Double;

.field private final s:Ljava/util/List;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/util/Map;

.field private v:Ljava/util/Map;

.field private w:Lio/sentry/protocol/z;

.field private x:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/sentry/d6;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lio/sentry/d6;->m()Lio/sentry/protocol/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/t3;-><init>(Lio/sentry/protocol/r;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    const-string v0, "transaction"

    .line 3
    iput-object v0, p0, Lio/sentry/protocol/y;->t:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    const-string v0, "sentryTracer is required"

    .line 5
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lio/sentry/d6;->t()Lio/sentry/y3;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/y3;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/j;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/y;->q:Ljava/lang/Double;

    .line 7
    invoke-virtual {p1}, Lio/sentry/d6;->t()Lio/sentry/y3;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lio/sentry/d6;->p()Lio/sentry/y3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/y3;->j(Lio/sentry/y3;)J

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Lio/sentry/j;->l(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 10
    invoke-virtual {p1}, Lio/sentry/d6;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/y;->p:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lio/sentry/d6;->G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/k6;

    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lio/sentry/k6;->I()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    new-instance v3, Lio/sentry/protocol/u;

    invoke-direct {v3, v1}, Lio/sentry/protocol/u;-><init>(Lio/sentry/k6;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lio/sentry/d6;->H()Lio/sentry/protocol/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p1}, Lio/sentry/d6;->o()Lio/sentry/l6;

    move-result-object v1

    .line 17
    new-instance v11, Lio/sentry/l6;

    .line 18
    invoke-virtual {v1}, Lio/sentry/l6;->k()Lio/sentry/protocol/r;

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Lio/sentry/l6;->h()Lio/sentry/n6;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lio/sentry/l6;->d()Lio/sentry/n6;

    move-result-object v5

    .line 21
    invoke-virtual {v1}, Lio/sentry/l6;->b()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v1}, Lio/sentry/l6;->a()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v1}, Lio/sentry/l6;->g()Lio/sentry/x6;

    move-result-object v8

    .line 24
    invoke-virtual {v1}, Lio/sentry/l6;->i()Lio/sentry/p6;

    move-result-object v9

    .line 25
    invoke-virtual {v1}, Lio/sentry/l6;->c()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lio/sentry/l6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/x6;Lio/sentry/p6;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v11}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 27
    invoke-virtual {v1}, Lio/sentry/l6;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lio/sentry/t3;->d0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p1}, Lio/sentry/d6;->I()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lio/sentry/t3;->W(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 32
    :cond_3
    new-instance v0, Lio/sentry/protocol/z;

    invoke-virtual {p1}, Lio/sentry/d6;->s()Lio/sentry/protocol/a0;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/a0;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/protocol/z;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/protocol/y;->w:Lio/sentry/protocol/z;

    .line 33
    invoke-virtual {p1}, Lio/sentry/d6;->J()Lio/sentry/metrics/c;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 34
    invoke-virtual {p1}, Lio/sentry/metrics/c;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lio/sentry/protocol/z;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lio/sentry/t3;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    const-string v1, "transaction"

    .line 38
    iput-object v1, p0, Lio/sentry/protocol/y;->t:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lio/sentry/protocol/y;->p:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lio/sentry/protocol/y;->q:Ljava/lang/Double;

    .line 42
    iput-object p3, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 43
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 45
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/protocol/u;

    .line 46
    iget-object p3, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    invoke-virtual {p2}, Lio/sentry/protocol/u;->c()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 47
    :cond_0
    iput-object p7, p0, Lio/sentry/protocol/y;->w:Lio/sentry/protocol/z;

    .line 48
    iput-object p6, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    return-void
.end method

.method static synthetic g0(Lio/sentry/protocol/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h0(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->q:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i0(Lio/sentry/protocol/y;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic j0(Lio/sentry/protocol/y;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k0(Lio/sentry/protocol/y;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l0(Lio/sentry/protocol/y;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic m0(Lio/sentry/protocol/y;Lio/sentry/protocol/z;)Lio/sentry/protocol/z;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->w:Lio/sentry/protocol/z;

    .line 2
    .line 3
    return-object p1
.end method

.method private n0(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x6

    .line 10
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method


# virtual methods
.method public o0()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public p0()Lio/sentry/x6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lio/sentry/l6;->g()Lio/sentry/x6;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public q0()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public s0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/protocol/y;->p0()Lio/sentry/x6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/protocol/y;->p:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "transaction"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lio/sentry/protocol/y;->p:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v2}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string v0, "start_timestamp"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lio/sentry/protocol/y;->q:Ljava/lang/Double;

    .line 26
    .line 27
    invoke-direct {p0, v2}, Lio/sentry/protocol/y;->n0(Ljava/lang/Double;)Ljava/math/BigDecimal;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v0, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "timestamp"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lio/sentry/protocol/y;->r:Ljava/lang/Double;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lio/sentry/protocol/y;->n0(Ljava/lang/Double;)Ljava/math/BigDecimal;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v0, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    const-string v0, "spans"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lio/sentry/protocol/y;->s:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 70
    .line 71
    .line 72
    :cond_2
    const-string v0, "type"

    .line 73
    .line 74
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    const-string v0, "measurements"

    .line 90
    .line 91
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lio/sentry/protocol/y;->u:Ljava/util/Map;

    .line 96
    .line 97
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    .line 101
    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    const-string v0, "_metrics_summary"

    .line 111
    .line 112
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lio/sentry/protocol/y;->v:Ljava/util/Map;

    .line 117
    .line 118
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 119
    .line 120
    .line 121
    :cond_4
    const-string v0, "transaction_info"

    .line 122
    .line 123
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, Lio/sentry/protocol/y;->w:Lio/sentry/protocol/z;

    .line 128
    .line 129
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 130
    .line 131
    .line 132
    new-instance v0, Lio/sentry/t3$b;

    .line 133
    .line 134
    invoke-direct {v0}, Lio/sentry/t3$b;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/t3$b;->a(Lio/sentry/t3;Lio/sentry/m2;Lio/sentry/ILogger;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lio/sentry/protocol/y;->x:Ljava/util/Map;

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/String;

    .line 163
    .line 164
    iget-object v2, p0, Lio/sentry/protocol/y;->x:Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_5
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public t0(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/y;->x:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method
