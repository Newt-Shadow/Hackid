.class public final Lio/sentry/protocol/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/k$a;
    }
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:I

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/k;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/protocol/k;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public c(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/protocol/k;->b:D

    .line 2
    .line 3
    return-void
.end method

.method public d(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/protocol/k;->a:D

    .line 2
    .line 3
    return-void
.end method

.method public e(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/protocol/k;->c:D

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/k;->f:Ljava/util/Map;

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
    const-string v0, "min"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-wide v1, p0, Lio/sentry/protocol/k;->a:D

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->b(D)Lio/sentry/m2;

    .line 13
    .line 14
    .line 15
    const-string v0, "max"

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v1, p0, Lio/sentry/protocol/k;->b:D

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->b(D)Lio/sentry/m2;

    .line 24
    .line 25
    .line 26
    const-string v0, "sum"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v1, p0, Lio/sentry/protocol/k;->c:D

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->b(D)Lio/sentry/m2;

    .line 35
    .line 36
    .line 37
    const-string v0, "count"

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p0, Lio/sentry/protocol/k;->d:I

    .line 44
    .line 45
    int-to-long v1, v1

    .line 46
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->a(J)Lio/sentry/m2;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const-string v0, "tags"

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lio/sentry/protocol/k;->e:Ljava/util/Map;

    .line 59
    .line 60
    invoke-interface {p1, p2, v0}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 64
    .line 65
    .line 66
    return-void
.end method
