.class Lio/sentry/m$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/m;->d(Lio/sentry/a1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/m;


# direct methods
.method constructor <init>(Lio/sentry/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    .line 6
    .line 7
    invoke-static {v2}, Lio/sentry/m;->g(Lio/sentry/m;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    const-wide/16 v4, 0xa

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lio/sentry/m;->h(Lio/sentry/m;J)J

    .line 23
    .line 24
    .line 25
    new-instance v0, Lio/sentry/r2;

    .line 26
    .line 27
    invoke-direct {v0}, Lio/sentry/r2;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    .line 31
    .line 32
    invoke-static {v1}, Lio/sentry/m;->f(Lio/sentry/m;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lio/sentry/t0;

    .line 51
    .line 52
    invoke-interface {v2, v0}, Lio/sentry/t0;->c(Lio/sentry/r2;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lio/sentry/m$b;->a:Lio/sentry/m;

    .line 57
    .line 58
    invoke-static {v1}, Lio/sentry/m;->i(Lio/sentry/m;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    return-void
.end method
