.class public abstract Lio/sentry/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/util/a0;->f(Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/s5;Lio/sentry/u0;Lio/sentry/w2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/util/a0;->d(Lio/sentry/s5;Lio/sentry/u0;Lio/sentry/w2;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/u0;Lio/sentry/w2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/util/a0;->e(Lio/sentry/u0;Lio/sentry/w2;)V

    return-void
.end method

.method private static synthetic d(Lio/sentry/s5;Lio/sentry/u0;Lio/sentry/w2;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/sentry/w2;->b()Lio/sentry/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/sentry/d;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lio/sentry/d;-><init>(Lio/sentry/ILogger;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lio/sentry/w2;->g(Lio/sentry/d;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lio/sentry/d;->r()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1, p0}, Lio/sentry/d;->F(Lio/sentry/u0;Lio/sentry/s5;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/sentry/d;->a()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private static synthetic e(Lio/sentry/u0;Lio/sentry/w2;)V
    .locals 0

    .line 1
    new-instance p1, Lio/sentry/w2;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/sentry/w2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lio/sentry/u0;->K(Lio/sentry/w2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic f(Lio/sentry/u0;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/z;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/util/z;-><init>(Lio/sentry/u0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lio/sentry/u0;->B(Lio/sentry/d3$a;)Lio/sentry/w2;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static g(Lio/sentry/u0;Lio/sentry/s5;)Lio/sentry/w2;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/y;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lio/sentry/util/y;-><init>(Lio/sentry/s5;Lio/sentry/u0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lio/sentry/u0;->B(Lio/sentry/d3$a;)Lio/sentry/w2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static h(Lio/sentry/o0;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/util/x;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
