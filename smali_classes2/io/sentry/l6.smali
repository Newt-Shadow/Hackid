.class public Lio/sentry/l6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/l6$a;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/protocol/r;

.field private final b:Lio/sentry/n6;

.field private final c:Lio/sentry/n6;

.field private transient d:Lio/sentry/x6;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lio/sentry/p6;

.field protected h:Ljava/util/Map;

.field protected i:Ljava/lang/String;

.field private j:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/sentry/l6;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    const-string v0, "manual"

    .line 16
    iput-object v0, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    iput-object v0, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 18
    iget-object v0, p1, Lio/sentry/l6;->b:Lio/sentry/n6;

    iput-object v0, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 19
    iget-object v0, p1, Lio/sentry/l6;->c:Lio/sentry/n6;

    iput-object v0, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 20
    iget-object v0, p1, Lio/sentry/l6;->d:Lio/sentry/x6;

    iput-object v0, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 21
    iget-object v0, p1, Lio/sentry/l6;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lio/sentry/l6;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lio/sentry/l6;->g:Lio/sentry/p6;

    iput-object v0, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 24
    iget-object p1, p1, Lio/sentry/l6;->h:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/b;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iput-object p1, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/x6;Lio/sentry/p6;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    const-string v0, "manual"

    .line 5
    iput-object v0, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    const-string v0, "traceId is required"

    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/r;

    iput-object p1, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    const-string p1, "spanId is required"

    .line 7
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n6;

    iput-object p1, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    const-string p1, "operation is required"

    .line 8
    invoke-static {p4, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 10
    iput-object p6, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 11
    iput-object p5, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 13
    iput-object p8, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/r;Lio/sentry/n6;Ljava/lang/String;Lio/sentry/n6;Lio/sentry/x6;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "manual"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v8}, Lio/sentry/l6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/x6;Lio/sentry/p6;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v1, Lio/sentry/protocol/r;

    invoke-direct {v1}, Lio/sentry/protocol/r;-><init>()V

    new-instance v2, Lio/sentry/n6;

    invoke-direct {v2}, Lio/sentry/n6;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/sentry/l6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Ljava/lang/String;Lio/sentry/n6;Lio/sentry/x6;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/sentry/x6;->b()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/sentry/l6;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lio/sentry/l6;

    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 14
    .line 15
    iget-object v3, p1, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 24
    .line 25
    iget-object v3, p1, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lio/sentry/n6;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 34
    .line 35
    iget-object v3, p1, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p1, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v1, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 64
    .line 65
    iget-object p1, p1, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 66
    .line 67
    if-ne v1, p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move v0, v2

    .line 71
    :goto_0
    return v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public g()Lio/sentry/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lio/sentry/n6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 6
    .line 7
    iget-object v3, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lio/sentry/util/q;->b([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public i()Lio/sentry/p6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public n(Lio/sentry/x6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/l6;->d:Lio/sentry/x6;

    .line 2
    .line 3
    return-void
.end method

.method public o(Lio/sentry/p6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 2
    .line 3
    return-void
.end method

.method public p(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/l6;->j:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    const-string v0, "trace_id"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/l6;->a:Lio/sentry/protocol/r;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/r;->serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "span_id"

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/sentry/l6;->b:Lio/sentry/n6;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lio/sentry/n6;->serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "parent_span_id"

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lio/sentry/l6;->c:Lio/sentry/n6;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Lio/sentry/n6;->serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v0, "op"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lio/sentry/l6;->e:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "description"

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lio/sentry/l6;->f:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string v0, "status"

    .line 69
    .line 70
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 75
    .line 76
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v0, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    const-string v0, "origin"

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lio/sentry/l6;->i:Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    const-string v0, "tags"

    .line 103
    .line 104
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lio/sentry/l6;->h:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lio/sentry/l6;->j:Ljava/util/Map;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/String;

    .line 136
    .line 137
    iget-object v2, p0, Lio/sentry/l6;->j:Ljava/util/Map;

    .line 138
    .line 139
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 152
    .line 153
    .line 154
    return-void
.end method
