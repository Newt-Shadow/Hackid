.class public final Lio/appmetrica/analytics/impl/Oj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/db;
.implements Lio/appmetrica/analytics/plugins/IPluginReporter;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public volatile b:Lio/appmetrica/analytics/impl/hi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Oj;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/P;)V
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Hj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Hj;-><init>(Lio/appmetrica/analytics/impl/P;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/cb;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Oj;->b:Lio/appmetrica/analytics/impl/hi;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Oj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Oj;->b:Lio/appmetrica/analytics/impl/hi;

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/cb;->a(Lio/appmetrica/analytics/impl/db;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/wn;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/yj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/yj;-><init>(Lio/appmetrica/analytics/impl/wn;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Jj;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Jj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0

    return-object p0
.end method

.method public final pauseSession()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/sj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ij;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ij;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/zj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/zj;-><init>(Lio/appmetrica/analytics/AdRevenue;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Fj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Fj;-><init>(Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 1
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
    new-instance v0, Lio/appmetrica/analytics/impl/Gj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Gj;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/wj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/wj;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Bj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Bj;-><init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/pj;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/pj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 1

    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/Cj;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Cj;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/pj;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/pj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/oj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/oj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 1

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Dj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Dj;-><init>(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Lj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Lj;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Mj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Mj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/Nj;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Nj;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/vj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/vj;-><init>(Lio/appmetrica/analytics/Revenue;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 1

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Aj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Aj;-><init>(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/qj;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/qj;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/uj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/uj;-><init>(Lio/appmetrica/analytics/profile/UserProfile;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resumeSession()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/rj;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Kj;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Kj;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/xj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/xj;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ej;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ej;-><init>(Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/tj;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/tj;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
