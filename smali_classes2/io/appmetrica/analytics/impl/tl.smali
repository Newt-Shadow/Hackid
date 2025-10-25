.class public final Lio/appmetrica/analytics/impl/tl;
.super Lio/appmetrica/analytics/impl/D5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ll;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/Kl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/D5;-><init>(Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig$RequestConfigLoader;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Kl;)V
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->c()Lio/appmetrica/analytics/impl/Ql;

    move-result-object v1

    .line 4
    sget-object v2, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 5
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/za;->u()Lio/appmetrica/analytics/impl/dj;

    move-result-object v2

    .line 6
    sget-object v3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 7
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->r()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->b()Lio/appmetrica/analytics/networktasks/internal/ArgumentsMerger;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/Kl;->b(Lio/appmetrica/analytics/impl/Kl;)Lio/appmetrica/analytics/impl/Kl;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/impl/a6;-><init>(Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/SdkEnvironmentProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/a6;)V

    .line 10
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Kl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/tl;->a(Lio/appmetrica/analytics/impl/Kl;)V

    return-void
.end method
