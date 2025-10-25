.class public abstract Lio/sentry/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/j$a;,
        Lio/sentry/util/j$c;,
        Lio/sentry/util/j$b;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/util/j;->l(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/ILogger;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/util/j;->m(Lio/sentry/ILogger;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/util/j$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/util/j;->k(Lio/sentry/util/j$c;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/util/j;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)Lio/sentry/c0;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Lio/sentry/util/j;->t(Lio/sentry/c0;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static f(Lio/sentry/c0;)Lio/sentry/hints/h;
    .locals 2

    .line 1
    const-string v0, "sentry:eventDropReason"

    .line 2
    .line 3
    const-class v1, Lio/sentry/hints/h;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lio/sentry/c0;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/sentry/hints/h;

    .line 10
    .line 11
    return-object p0
.end method

.method public static g(Lio/sentry/c0;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/c0;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Lio/sentry/c0;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static i(Lio/sentry/c0;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "sentry:isFromHybridSdk"

    .line 4
    .line 5
    const-class v2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Lio/sentry/c0;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private static synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic k(Lio/sentry/util/j$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/sentry/util/j$c;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic m(Lio/sentry/ILogger;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-static {p2, p1, p0}, Lio/sentry/util/n;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static n(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$c;)V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/util/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/util/h;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/util/i;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Lio/sentry/util/i;-><init>(Lio/sentry/util/j$c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0, v1}, Lio/sentry/util/j;->p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/util/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2, v0}, Lio/sentry/util/j;->p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lio/sentry/util/j$a;->accept(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p3, v0, p1}, Lio/sentry/util/j$b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/g;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lio/sentry/util/g;-><init>(Lio/sentry/ILogger;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p3, v0}, Lio/sentry/util/j;->p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static r(Lio/sentry/c0;Lio/sentry/hints/h;)V
    .locals 1

    .line 1
    const-string v0, "sentry:eventDropReason"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static s(Lio/sentry/c0;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sentry.javascript"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "sentry.dart"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "sentry.dotnet"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string p1, "sentry:isFromHybridSdk"

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public static t(Lio/sentry/c0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "sentry:typeCheckHint"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static u(Lio/sentry/c0;)Z
    .locals 1

    .line 1
    const-class v0, Lio/sentry/hints/e;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-class v0, Lio/sentry/hints/c;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const-class v0, Lio/sentry/hints/b;

    .line 18
    .line 19
    invoke-static {p0, v0}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    :cond_1
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
