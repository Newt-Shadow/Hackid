.class public final Lio/appmetrica/analytics/impl/n;
.super Lio/appmetrica/analytics/impl/L7;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;


# instance fields
.field public a:Landroid/app/Application;

.field public volatile b:Lio/appmetrica/analytics/impl/m;

.field public final c:Lio/appmetrica/analytics/impl/Ba;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/L7;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/m;->d:Lio/appmetrica/analytics/impl/m;

    .line 5
    .line 6
    iput-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    .line 7
    .line 8
    new-instance v0, Lio/appmetrica/analytics/impl/Ba;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ba;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/m;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 2

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    .line 14
    invoke-interface {v1, p1, p2}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;->onEvent(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/app/Application;)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :catchall_0
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    .line 3
    .line 4
    sget-object v1, Lio/appmetrica/analytics/impl/m;->b:Lio/appmetrica/analytics/impl/m;

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 9
    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lio/appmetrica/analytics/impl/m;->c:Lio/appmetrica/analytics/impl/m;

    .line 24
    .line 25
    iput-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    .line 30
    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_2
    :goto_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    .line 3
    .line 4
    sget-object v1, Lio/appmetrica/analytics/impl/m;->b:Lio/appmetrica/analytics/impl/m;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 9
    .line 10
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lio/appmetrica/analytics/impl/m;->d:Lio/appmetrica/analytics/impl/m;

    .line 19
    .line 20
    iput-object v0, p0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;

    .line 21
    .line 22
    iget-object v0, p0, Lio/appmetrica/analytics/impl/n;->a:Landroid/app/Application;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    monitor-exit p0

    .line 33
    throw v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->CREATED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->DESTROYED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STARTED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STOPPED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/n;->a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final varargs declared-synchronized registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p2

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->values()[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_1
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    aget-object v2, p2, v1

    .line 16
    .line 17
    iget-object v3, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 18
    .line 19
    invoke-virtual {v3, v2, p1}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final varargs declared-synchronized unregisterListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    array-length v0, p2

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->values()[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_1
    array-length v0, p2

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_4

    .line 14
    .line 15
    aget-object v2, p2, v1

    .line 16
    .line 17
    iget-object v3, p0, Lio/appmetrica/analytics/impl/n;->c:Lio/appmetrica/analytics/impl/Ba;

    .line 18
    .line 19
    iget-object v4, v3, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/util/Collection;

    .line 26
    .line 27
    if-eqz v4, :cond_3

    .line 28
    .line 29
    invoke-interface {v4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iget-boolean v5, v3, Lio/appmetrica/analytics/impl/Ba;->b:Z

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Ba;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/n;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method
