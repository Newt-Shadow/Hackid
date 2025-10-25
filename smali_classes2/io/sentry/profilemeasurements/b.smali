.class public final Lio/sentry/profilemeasurements/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/profilemeasurements/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/lang/String;

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/profilemeasurements/b;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Number;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lio/sentry/profilemeasurements/b;->c:D

    return-void
.end method

.method static synthetic a(Lio/sentry/profilemeasurements/b;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/sentry/profilemeasurements/b;->c:D

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic b(Lio/sentry/profilemeasurements/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public c(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/sentry/profilemeasurements/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lio/sentry/profilemeasurements/b;

    .line 18
    .line 19
    iget-object v2, p0, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v3, p1, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lio/sentry/util/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-wide v2, p0, Lio/sentry/profilemeasurements/b;->c:D

    .line 40
    .line 41
    iget-wide v4, p1, Lio/sentry/profilemeasurements/b;->c:D

    .line 42
    .line 43
    cmpl-double p1, v2, v4

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lio/sentry/profilemeasurements/b;->c:D

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lio/sentry/util/q;->b([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    const-string v0, "value"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-wide v1, p0, Lio/sentry/profilemeasurements/b;->c:D

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 17
    .line 18
    .line 19
    const-string v0, "elapsed_since_start_ns"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lio/sentry/profilemeasurements/b;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lio/sentry/profilemeasurements/b;->a:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 68
    .line 69
    .line 70
    return-void
.end method
