.class public final Lio/sentry/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q0;


# instance fields
.field private final a:Lio/sentry/s5;


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/cache/h;->a:Lio/sentry/s5;

    .line 5
    .line 6
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/h;->a:Lio/sentry/s5;

    .line 2
    .line 3
    const-string v1, ".options-cache"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lio/sentry/cache/d;->a(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static b(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lio/sentry/cache/h;->c(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/g1;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/g1;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, ".options-cache"

    .line 2
    .line 3
    invoke-static {p0, v0, p1, p2, p3}, Lio/sentry/cache/d;->c(Lio/sentry/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/g1;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/cache/h;->a:Lio/sentry/s5;

    .line 2
    .line 3
    const-string v1, ".options-cache"

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Lio/sentry/cache/d;->d(Lio/sentry/s5;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e(Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "tags.json"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lio/sentry/protocol/p;)V
    .locals 1

    .line 1
    const-string v0, "sdk-version.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "dist.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/Double;)V
    .locals 1

    .line 1
    const-string v0, "replay-error-sample-rate.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "environment.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "proguard-uuid.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "release.json"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lio/sentry/cache/h;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
