.class public final Lio/appmetrica/analytics/impl/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/db;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p0;

.field public final b:Lio/appmetrica/analytics/impl/Bh;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:Landroid/content/Context;

.field public final e:Lio/appmetrica/analytics/ReporterConfig;

.field public final f:Lio/appmetrica/analytics/impl/qi;

.field public final g:Lio/appmetrica/analytics/impl/Me;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/qi;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 7

    .line 6
    new-instance v6, Lio/appmetrica/analytics/impl/Me;

    new-instance v0, Lio/appmetrica/analytics/impl/Rh;

    invoke-direct {v0, p3, p1, p5}, Lio/appmetrica/analytics/impl/Rh;-><init>(Lio/appmetrica/analytics/impl/p0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-direct {v6, v0}, Lio/appmetrica/analytics/impl/Me;-><init>(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/hi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/qi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/Me;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/qi;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/Me;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->f()Lio/appmetrica/analytics/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/hi;->d:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 11
    iput-object p3, p0, Lio/appmetrica/analytics/impl/hi;->a:Lio/appmetrica/analytics/impl/p0;

    .line 12
    iput-object p4, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 13
    iput-object p5, p0, Lio/appmetrica/analytics/impl/hi;->e:Lio/appmetrica/analytics/ReporterConfig;

    .line 14
    iput-object p6, p0, Lio/appmetrica/analytics/impl/hi;->g:Lio/appmetrica/analytics/impl/Me;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/p0;)V
    .locals 6

    .line 3
    new-instance v2, Lio/appmetrica/analytics/impl/Bh;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Bh;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/qi;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/qi;-><init>()V

    .line 4
    invoke-static {p2}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/hi;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/impl/p0;Lio/appmetrica/analytics/impl/qi;Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/impl/p0;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/p0;-><init>()V

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lio/appmetrica/analytics/impl/hi;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/p0;)V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/p0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lio/appmetrica/analytics/impl/o0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/o0;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object p0

    .line 4
    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/Oa;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Vh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Vh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/P;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/bi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/bi;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/impl/P;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/wn;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->d:Lio/appmetrica/analytics/impl/kn;

    .line 7
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Zh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Zh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/impl/wn;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 20
    .line 21
    new-instance v1, Lio/appmetrica/analytics/impl/Uh;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Uh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ReporterConfig;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/ei;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/ei;-><init>(Lio/appmetrica/analytics/impl/hi;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->g:Lio/appmetrica/analytics/impl/Me;

    .line 2
    .line 3
    return-object v0
.end method

.method public final pauseSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Mh;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/hi;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/di;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/di;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->h:Lio/appmetrica/analytics/impl/kn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Qh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Qh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/AdRevenue;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->h:Lio/appmetrica/analytics/impl/kn;

    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Yh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Yh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->j:Lio/appmetrica/analytics/impl/kn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 18
    .line 19
    new-instance v1, Lio/appmetrica/analytics/impl/ai;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/ai;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->i:Lio/appmetrica/analytics/impl/kn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 14
    .line 15
    new-instance v1, Lio/appmetrica/analytics/impl/Sh;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Sh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/hi;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->c:Lio/appmetrica/analytics/impl/kn;

    .line 11
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Jh;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Jh;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->b:Lio/appmetrica/analytics/impl/kn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lio/appmetrica/analytics/impl/P1;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/P1;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 7
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Ih;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Ih;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Wh;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Wh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/kn;

    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/fi;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/fi;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/kn;

    .line 8
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/gi;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/gi;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 12
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->a:Lio/appmetrica/analytics/impl/kn;

    .line 13
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lio/appmetrica/analytics/impl/Hh;

    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Hh;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->g:Lio/appmetrica/analytics/impl/kn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 14
    .line 15
    new-instance v1, Lio/appmetrica/analytics/impl/Ph;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Ph;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/Revenue;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->e:Lio/appmetrica/analytics/impl/kn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 14
    .line 15
    new-instance v1, Lio/appmetrica/analytics/impl/Kh;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Kh;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Bh;->f:Lio/appmetrica/analytics/impl/kn;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 14
    .line 15
    new-instance v1, Lio/appmetrica/analytics/impl/Oh;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Oh;-><init>(Lio/appmetrica/analytics/impl/hi;Lio/appmetrica/analytics/profile/UserProfile;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final resumeSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Lh;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Lh;-><init>(Lio/appmetrica/analytics/impl/hi;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/ci;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/ci;-><init>(Lio/appmetrica/analytics/impl/hi;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Th;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Th;-><init>(Lio/appmetrica/analytics/impl/hi;Z)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Xh;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1, p2}, Lio/appmetrica/analytics/impl/Xh;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;[B)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->b:Lio/appmetrica/analytics/impl/Bh;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->f:Lio/appmetrica/analytics/impl/qi;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/hi;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Nh;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/Nh;-><init>(Lio/appmetrica/analytics/impl/hi;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
